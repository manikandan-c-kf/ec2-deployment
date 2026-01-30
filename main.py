from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Welcome to FastAPI!"}

@app.get("/hello/{name}")
def say_hello(name: str):
    return {"greeting": f"Hello, {name}!"}

@app.post("/add")
def add_numbers(data: dict):
    a = data.get("a", 0)
    b = data.get("b", 0)
    return {"result": a + b}
