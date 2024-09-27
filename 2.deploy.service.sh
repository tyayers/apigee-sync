gcloud run deploy apimsync --source . --region $REGION --allow-unauthenticated --set-env-vars APIGEE_PROJECT=$PROJECT_ID,APIGEE_REGION=$REGION,AZURE_SUBSCRIPTION_ID=$SUBSCRIPTION_ID,AZURE_RESOURCE_GROUP=$RESOURCE_GROUP,AZURE_SERVICE_NAME=$SERVICE_NAME,AZURE_CLIENT_ID=$CLIENT_ID,AZURE_CLIENT_SECRET=$CLIENT_SECRET,AZURE_TENANT_ID=$TENANT_ID,AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID,AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY,AWS_REGION=$AWS_REGION