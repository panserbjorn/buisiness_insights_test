from pydantic import BaseModel
from typing import List, Optional
import enum


class Role(str, enum.Enum):
    admin = "admin"
    user = "user"


class User(BaseModel):
    id: str
    name: str
    email: str
    role: Role
    policies: List[str] = []

    class Config:
        orm_mode = True


class Policy(BaseModel):
    id: str
    amount_insured: float
    inception_date: str
    installment_payment: bool
    email: str
    user_id: str

    class Config:
        orm_mode = True
