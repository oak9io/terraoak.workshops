import boto3
import simplejson as json

def lambda_handler(event, context):
    client = boto3.resource('dynamodb')
    table = client.Table('Users')
    response = table.get_item(
        Key={
            'id': int(event['queryStringParameters']['id'])
        }
    )
    if 'Item' in response:
        return {
            'statusCode': 200,
            'body': json.dumps((response), use_decimal=True)
}
    else:
        return {
            'statusCode': '404',
            'body': 'Not found'
        }