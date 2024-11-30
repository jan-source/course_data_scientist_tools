

### 1. Build the Docker image from the Dockerfile: 
docker build -t train_prediction_model:latest ./

### 2. Run container Add port mapping:
docker run -p 8888:8888 train_prediction_model