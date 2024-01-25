docker build -t postgres_container -f Dockerfile.postgresql .
docker run --name postgres_instance -e POSTGRES_PASSWORD=sql@sql -d postgres_container 

docker build -t python_app_container -f Dockerfile.python .
docker run --name python_app_instance --link postgres_instance:postgres python_app_container
