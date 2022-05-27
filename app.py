import sys
import imageio
import Metashape
def handler(event, context):
    return 'Hello from AWS Lambda using Python' + sys.version + '!' + ".".join(Metashape.app.version.split('.')[:])        