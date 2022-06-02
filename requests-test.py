import requests
import base64

API_ENDPOINT = 'http://localhost:9000/2015-03-31/functions/function/invocations'
# API_ENDPOINT = 'https://aws-awslambdabaseima-rmiidmvpc4j.ws-eu46.gitpod.io:9000/2015-03-31/functions/function/invocations'

with open("windows-min.png", "rb") as image_file:
    data = base64.b64encode(image_file.read())

# data_dict = {'data': data}
data_dict = {}
# print(data_dict)

r = requests.post(url = API_ENDPOINT, data = data)
  
# extracting response text 
pastebin_url = r.text
print("The pastebin URL is:%s"%pastebin_url)