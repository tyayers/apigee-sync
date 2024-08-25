# Apimsync
A tool to help synchronize API assets between different API platforms. The tool can either be used as a CLI, or as a web service for remote calls.

## Example usage

These four commands export all APIs from an Azure APIM service, then offramp them to a generic format, then onramp them to the API Hub format, and then finally import them to an API Hub instance in a Google Cloud project.

```sh
# source env variables
source .env

# 1. azure export all apis from an Azure APIM service to the local filesystem (./data directory will be created)
apimsync azure apis export --subscription $SUBSCRIPTION_ID --resourcegroup $RESOURCE_GROUP --name $SERVICE_NAME

# 2. azure apis offramp exported APIs to a generic format that can be onramped to API Hub (./data directory will be created)
apimsync azure apis offramp  --subscription $SUBSCRIPTION_ID --resourcegroup $RESOURCE_GROUP --name $SERVICE_NAME

# 3. apihub apis onramp from generic format to API Hub format (./data directory will be created)
apimsync apihub apis onramp --project $PROJECT_ID --region $REGION

# 4. apihub apis import from onramped files to API Hub
apimsync apihub apis import --project $PROJECT_ID --region $REGION
```

You can also start a web server to run commands.

```sh
# start web service
apimsync ws start

# open http://0:8080/docs to see API docs
```
The docs are available at http://0:8080/docs after starting the web server.

## Getting started

You can either download a release binary, or build the project yourself.

```sh
# build
git clone https://github.com/tyayers/apimsync.git
cd apimsync
go build
# run apimsync output command
```
