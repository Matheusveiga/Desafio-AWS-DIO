#!/bin/bash
# Script de exemplo para deploy de função Lambda
# Requer AWS CLI configurada

FUNCTION_NAME="farmacia-processa-pedidos"
ZIP_FILE="lambda_function.zip"
ROLE_ARN="arn:aws:iam::123456789012:role/lambda-execution-role"

echo "Compactando função Lambda..."
zip -r $ZIP_FILE lambda_function.py > /dev/null

echo "Criando função Lambda na AWS..."
aws lambda create-function     --function-name $FUNCTION_NAME     --runtime python3.9     --zip-file fileb://$ZIP_FILE     --handler lambda_function.lambda_handler     --role $ROLE_ARN

echo "Deploy concluído!"
