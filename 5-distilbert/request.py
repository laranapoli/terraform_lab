import boto3
import json

session = boto3.Session(profile_name='default')
 
client = boto3.client("sagemaker-runtime", region_name='sa-east-1')
 
ENDPOINT_NAME = "distilbert-ep-cvtgzfsp"
 
body={"inputs":"I'm really enjoying learning Terraform."}
 
response = client.invoke_endpoint(
            EndpointName=ENDPOINT_NAME,
            ContentType="application/json",
            Accept="application/json",
            Body=json.dumps(body),
        )

print(response['Body'].read().decode('utf-8'))