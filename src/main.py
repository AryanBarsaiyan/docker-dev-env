from fastapi import FastAPI
import redis

app = FastAPI()

r = redis.Redis(host='redis', port=6379)


@app.get("/")
def read_root():
    return {"Hello": "aryan"}

@app.get("/hits")
def read_hits():
    return {"hits": r.incr('hits')}