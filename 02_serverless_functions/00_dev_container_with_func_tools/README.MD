# Creating a new func

## Step 1: Create a new Azure Functions project
func init app --python

## Step 2: Navigate into the project directory
cd app

## Step 3: Create a new HTTP-triggered function
func new --template "HTTP trigger" --name test --authlevel "anonymous"