# redis-client-service
A lightweight python client with HTTP API for interacting with Redis. 
- Note: this branch has an additional `redis_password` parameter that can be supplied

### Pre-requisites:
- A Redis service. Example Docker command: `docker run --name test-redis -p 6379:6379 -d redis redis-server --requirepass foobar`
- Python with pyyaml redis and Flask. Install using: `pip install pyyaml redis Flask`

### Running from command line:
```
export FLASK_APP=client.py
export REDIS_HOST=localhost 
export REDIS_PORT=6379 
export REDIS_PASSWORD=foobar 
python -m flask run --host=0.0.0.0 
```

### Running as Docker container:
```
docker build -t python-clientms .
docker run --name clientms --net=host -d -e REDIS_HOST=localhost -e REDIS_PORT=6379 -e REDIS_PASSWORD=foobar-p 5000:5000 python-clientms
```

### Interact with the application:
```
curl localhost:5000/  
curl localhost:5000/write/cat  
curl localhost:5000/read/<key>
```