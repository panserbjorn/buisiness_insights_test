from typing import Annotated
from fastapi import APIRouter, HTTPException
from fastapi import Depends
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from sqlalchemy.orm import Session

# Temporal will replace for database
from internal.providers import DataProvider

from internal import crud
from internal.jwt_auth import check_role, check_token

from database import get_db


data = DataProvider()

router = APIRouter()

role_security = HTTPBearer()


@router.get("/policies", tags=["policies"], description="Get all policies")
def get_policies(
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if check_role(credentials, "admin"):
        return crud.get_policies(db)
    else:
        return HTTPException(status_code=403, detail="Forbidden")


@router.get(
    "/policies/{policy_id}", tags=["policies"], description="Get a policy by ID"
)
def get_policy_by_id(
    policy_id: str,
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if check_role(credentials, "admin"):
        return crud.get_policy_by_id(db, policy_id)
    else:
        return HTTPException(status_code=403, detail="Forbidden")


@router.get(
    "/policy/{policy_id}/user",
    tags=["policies"],
    description="Get the users for a policy",
)
def get_policy_users(
    policy_id: str,
    credentials: Annotated[HTTPAuthorizationCredentials, Depends(role_security)],
    db: Session = Depends(get_db),
):
    if check_role(credentials, "admin"):
        return crud.get_policy_users(db, policy_id)
    else:
        return HTTPException(status_code=403, detail="Forbidden")
