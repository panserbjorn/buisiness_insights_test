from sqlalchemy.orm import Session
import models.models as models
import schemas.schema as schemas


def get_user_by_email(db: Session, email: str) -> models.User | None:
    return db.query(models.User).filter(models.User.email == email).first()


def get_user_by_id(db: Session, user_id: str) -> models.User | None:
    return db.query(models.User).filter(models.User.id == user_id).first()


def get_user_by_name(db: Session, user_name: str) -> models.User | None:
    return db.query(models.User).filter(models.User.name == user_name).first()


def get_users(db: Session) -> list[models.User]:
    return db.query(models.User).all()


def get_user_policies(db: Session, user_id: str) -> list[models.Policy] | None:
    user = get_user_by_id(db, user_id)
    if user:
        return user.policies
    return None


def get_policies(db: Session) -> list[models.Policy]:
    return db.query(models.Policy).all()


def get_policy_by_id(db: Session, policy_id: str) -> models.Policy | None:
    return db.query(models.Policy).filter(models.Policy.id == policy_id).first()


def get_policy_users(db: Session, policy_id: str) -> models.User | None:
    policy = get_policy_by_id(db, policy_id)
    if policy:
        return get_user_by_id(db, policy.user_id)
    return None
