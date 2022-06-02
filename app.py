import sys
import imageio
import Metashape
import boto3
import base64
import json

ENDPOINT_NAME = 'window-measurement-endpoint'
runtime= boto3.client('runtime.sagemaker', region_name='us-east-1')

def handler(event, context):

    imgData = base64.b64decode(str(event['data']))

    response = runtime.invoke_endpoint(
        EndpointName=ENDPOINT_NAME, 
        ContentType='application/octet-stream', 
        Body=imgData
    )

    markerBarRatio = 1.

    result = response['Body'].read()
    result = json.loads(result)
    result = dict(result)

    dimensions = []

    for box in result['pred_boxes']:
        x1 = box[0]
        y1 = box[1]
        x2 = box[2]
        y2 = box[3]

        height = int(y2-y1)
        width = int(x2-x1)

        dimension_width = width*markerBarRatio
        dimension_height = height*markerBarRatio

        dimensions.append([dimension_height, dimension_width])

        
    result['dimensions'] = dimensions

    return {
        'statusCode': 200,
        'headers': {'Content-Type': 'application/json'},
        'body': json.dumps(result)
    }