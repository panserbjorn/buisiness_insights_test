from fastapi import APIRouter

# Temporal will replace for database
from internal.providers import DataProvider

data = DataProvider()

router = APIRouter()


@router.get("/users", tags=["users"], description="Get all users")
def get_users():
    return data.get_users()


@router.get("/users/{user_id}", tags=["users"], description="Get a user by ID")
def get_user_by_id(user_id: str):
    return data.get_user_data(user_id)


@router.get("/users/name/{user_name}", tags=["users"], description="Get a user by name")
def get_user_by_name(user_name: str):
    return data.get_user_data_by_name(user_name)


@router.get(
    "/users/{user_name}/policies",
    tags=["users"],
    description="Get all policies for a user",
)
def get_user_policies(user_name: str):
    return data.get_user_policies(data.get_user_data_by_name(user_name)["id"])
