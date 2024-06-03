from typing import Annotated
from fastapi import APIRouter, HTTPException
from fastapi import Depends
from fastapi.security import HTTPBasic, HTTPBasicCredentials
from sqlalchemy.orm import Session

# Temporal will replace for database
from internal.providers import DataProvider

from internal import crud

from database import get_db

import jwt

data = DataProvider()

router = APIRouter()

login_security = HTTPBasic()


@router.post("/login", tags=["auth"], description="Login to the API")
def login(
    credentials: Annotated[HTTPBasicCredentials, Depends(login_security)],
    db: Session = Depends(get_db),
):
    user = crud.get_user_by_email(db=db, email=credentials.username)
    if not user:
        return HTTPException(status_code=404, detail="User not found")
    else:
        # Generate a JWT token with the user role and user id
        encoded_jwt = jwt.encode(
            {"role": user.role, "id": user.id}, "secret", algorithm="HS256"
        )
        return {"token": encoded_jwt}


@router.get("/users", tags=["users"], description="Get all users")
def get_users(db: Session = Depends(get_db)):
    return data.get_users()


@router.get("/users/{user_id}", tags=["users"], description="Get a user by ID")
def get_user_by_id(user_id: str, db: Session = Depends(get_db)):
    return data.get_user_data(user_id)


@router.get("/users/name/{user_name}", tags=["users"], description="Get a user by name")
def get_user_by_name(user_name: str, db: Session = Depends(get_db)):
    return data.get_user_data_by_name(user_name)


@router.get(
    "/users/{user_name}/policies",
    tags=["users"],
    description="Get all policies for a user",
)
def get_user_policies(user_name: str, db: Session = Depends(get_db)):
    return data.get_user_policies(data.get_user_data_by_name(user_name)["id"])
