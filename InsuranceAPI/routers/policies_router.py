from fastapi import APIRouter

# Temporal will replace for database
from internal.providers import DataProvider

data = DataProvider()

router = APIRouter()


@router.get("/policies", tags=["policies"], description="Get all policies")
def get_policies():
    return data.get_policies()


@router.get(
    "/policies/{policy_id}", tags=["policies"], description="Get a policy by ID"
)
def get_policy_by_id(policy_id: str):
    return data.get_policy_data(policy_id)


@router.get(
    "/policy/{policy_id}/user",
    tags=["policies"],
    description="Get the users for a policy",
)
def get_policy_users(policy_id: str):
    return data.get_policy_users(policy_id)
