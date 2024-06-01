from sqlalchemy import create_engine
from sqlalchemy import text
from sqlalchemy.orm import Session
import os
import models as models
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

DATABASE_URL = os.getenv("DATABASE_URL", "postgresql://postgres:@localhost:5432")
engine = create_engine(
    DATABASE_URL,
    echo=True,
)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()


def init_database():
    session = Session(engine)

    session.commit()
    session.close()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
