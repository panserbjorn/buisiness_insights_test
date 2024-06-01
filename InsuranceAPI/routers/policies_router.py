from fastapi import APIRouter

router = APIRouter()


@router.get("/policies", tags=["policies"], description="Get all policies")
def get_policies():
    return {"policies": "policies"}


@router.get(
    "/policies/{policy_id}", tags=["policies"], description="Get a policy by ID"
)
def get_policy_by_id(policy_id: int):
    return {"policy_id": policy_id}


@router.get(
    "/policy/{policy_id}/user",
    tags=["policies"],
    description="Get the users for a policy",
)
def get_policy_users(policy_id: int):
    return {"policy_id": policy_id, "users": "users"}
