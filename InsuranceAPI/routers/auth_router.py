from typing import Annotated
from fastapi import APIRouter, HTTPException
from fastapi import Depends
from fastapi.security import (
    HTTPAuthorizationCredentials,
    HTTPBasic,
    HTTPBasicCredentials,
    HTTPBearer,
)
from sqlalchemy.orm import Session
import jwt

from internal import crud

from database import get_db
from internal.jwt_auth import check_token, check_role

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


role_security = HTTPBearer()


@router.get("/users", tags=["users"], description="Get all users")
def get_users(
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if check_role(credentials, "admin"):
        return crud.get_users(db)
    else:
        return HTTPException(status_code=403, detail="Forbidden")


@router.get("/users/{user_id}", tags=["users"], description="Get a user by ID")
def get_user_by_id(
    user_id: str,
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if not check_token(credentials=credentials):
        return HTTPException(status_code=401, detail="Unauthorized")
    return crud.get_user_by_id(db, user_id)


@router.get("/users/name/{user_name}", tags=["users"], description="Get a user by name")
def get_user_by_name(
    user_name: str,
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if not check_token(credentials=credentials):
        return HTTPException(status_code=401, detail="Unauthorized")
    return crud.get_user_by_name(db, user_name)


@router.get(
    "/users/{user_name}/policies",
    tags=["users"],
    description="Get all policies for a user",
)
def get_user_policies(
    user_name: str,
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if check_role(credentials, "admin"):
        return crud.get_user_policies(db, user_name)
    else:
        return HTTPException(status_code=403, detail="Forbidden")
