
FROM mcr.microsoft.com/azure-functions/python:4-python3.11


RUN apt-get update && \
    apt-get install -y curl && \
    apt-get update && \
    apt-get install -y azure-functions-core-tools-4 && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash

ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true

# Import as otherwise point to wrong directory and function app will not be found
ENV AzureWebJobsScriptRoot=""


# Add Node
RUN  curl -sL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*



# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY ./backend ./backend
RUN pip install -r ./backend/requirements.txt

# Create frontend
COPY ./frontend ./frontend

# Install the dependencies
WORKDIR /usr/src/app/frontend
RUN yarn install


EXPOSE 7071 5173


# Step 5: Run the function locally
CMD  ["/bin/bash"]