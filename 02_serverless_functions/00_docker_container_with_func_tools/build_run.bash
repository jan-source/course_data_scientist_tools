

# build container
docker build ./ -t azure_functools:latest

# run container
docker run -d --name azure_functools -p 7071:8000 azure_functools:latest tail -f /dev/null