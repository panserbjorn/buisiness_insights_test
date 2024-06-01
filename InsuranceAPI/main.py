from fastapi import FastAPI


from routers.auth_router import router as auth_router
from routers.policies_router import router as policies_router

app = FastAPI()

app.include_router(auth_router)
app.include_router(policies_router)


@app.get(
    "/heartbeat", tags=["heartbeat"], description="Check if the API is up and running"
)
def read_root():
    return {"heartbeat": "OK"}
