#!/Library/Frameworks/Python.framework/Versions/3.12/bin/python3

import boto3
import requests
import urllib.request

url = "https://i.makeagif.com/media/12-31-2023/UCxj1h.gif"
local_file = 'johncena.gif'
response=requests.get(url)

bucket_name = 'ds2022-qce2dp'
s3 = boto3.client('s3', region_name = 'us-east-1')

with open(local_file, 'rb') as file_data:
	resp = s3.put_object(
		Body = file_data,
		Bucket = bucket_name,
		Key = local_file,
		ACL = 'public-read'
	)

expires_in = 604800

response = s3.generate_presigned_url(
	'get_object',
	Params={'Bucket': bucket_name, 'Key': local_file},
	ExpiresIn=expires_in
	)

print(response)
