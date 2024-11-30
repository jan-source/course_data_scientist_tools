
## Build and start container
<i>Run commands in 01_build_prediction_model</i>

### 1. Build the Docker image from the Dockerfile: 
docker build -t train_prediction_model:latest ./

### 2. Run container Add port mapping:
docker run -p 8888:8888 train_prediction_model

### 3. Copy trained model to host:
docker cp <b>{container_id}</b>:/app/gbm_500.pkl ./gbm_500.pkl