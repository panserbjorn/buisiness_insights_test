from os import getenv
from sqlalchemy import Boolean, Column, Integer, MetaData, String, ForeignKey
from sqlalchemy.orm import DeclarativeBase
from typing import List
from typing import Optional
from sqlalchemy import ForeignKey
from sqlalchemy import String
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
import enum


SCHEMA = getenv("DB_SCHEMA", "insurance")


class Role(enum.Enum):
    admin = "admin"
    user = "user"


class Base(DeclarativeBase):
    metadata = MetaData(schema=SCHEMA)
    pass


class Policy(Base):
    __tablename__ = "policies"

    id: Mapped[str] = mapped_column(String(50), primary_key=True)
    amount_insured: Mapped[float] = mapped_column(Integer)
    inception_date: Mapped[str] = mapped_column(String(50))
    installment_payment: Mapped[bool] = mapped_column(Boolean)
    email: Mapped[str] = mapped_column(String(50))
    user_id: Mapped[str] = mapped_column(String(50), ForeignKey("users.id"))
    user: Mapped["User"] = relationship("User", back_populates="policies")

    def __repr__(self):
        return f"<Policy(amount_insured={self.amount_insured}, inception_date={self.inception_date}, installment_payment={self.installment_payment}, email={self.email})>"


class User(Base):
    __tablename__ = "users"

    id: Mapped[str] = mapped_column(String(50), primary_key=True)
    name: Mapped[str] = mapped_column(String(50))
    email: Mapped[str] = mapped_column(String(50))
    role: Mapped[Role] = mapped_column(String(10))
    policies: Mapped[List["Policy"]] = relationship("Policy", back_populates="user")

    def __repr__(self):
        return f"<User(name={self.name}, email={self.email}, role={self.role})>"
