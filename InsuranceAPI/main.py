from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from routers.auth_router import router as auth_router
from routers.policies_router import router as policies_router

from database import init_database

app = FastAPI()

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
init_database()

app.include_router(auth_router)
app.include_router(policies_router)


@app.get(
    "/heartbeat", tags=["heartbeat"], description="Check if the API is up and running"
)
def read_root():
    return {"heartbeat": "OK"}
