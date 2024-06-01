from fastapi import APIRouter

router = APIRouter()


@router.get("/users", tags=["users"], description="Get all users")
def get_users():
    return {"users": "users"}


@router.get("/users/{user_id}", tags=["users"], description="Get a user by ID")
def get_user_by_id(user_id: int):
    return {"user_id": user_id}


@router.get("/users/name/{user_name}", tags=["users"], description="Get a user by name")
def get_user_by_name(user_name: str):
    return {"user_name": user_name}


@router.get(
    "/users/{user_name}/policies",
    tags=["users"],
    description="Get all policies for a user",
)
def get_user_policies(user_name: str):
    return {"user_name": user_name, "policies": "policies"}
