from fastapi import APIRouter
from fastapi import Depends
from sqlalchemy.orm import Session

# Temporal will replace for database
from internal.providers import DataProvider

from internal import crud

from database import get_db

data = DataProvider()

router = APIRouter()


@router.get("/policies", tags=["policies"], description="Get all policies")
def get_policies(db: Session = Depends(get_db)):
    return crud.get_policies(db)


@router.get(
    "/policies/{policy_id}", tags=["policies"], description="Get a policy by ID"
)
def get_policy_by_id(policy_id: str, db: Session = Depends(get_db)):
    return crud.get_policy_by_id(db, policy_id)


@router.get(
    "/policy/{policy_id}/user",
    tags=["policies"],
    description="Get the users for a policy",
)
def get_policy_users(policy_id: str, db: Session = Depends(get_db)):
    return crud.get_policy_users(db, policy_id)
