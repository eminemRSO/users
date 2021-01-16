from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from config import DB_PASSWORD, DB_USER, DB_NAME, DB_URL, DB_PORT

SQLALCHEMY_DATABASE_URL = "postgresql://" + DB_USER + ":" + DB_PASSWORD + "@" + DB_URL + ":" + DB_PORT + "/" + DB_NAME

engine = create_engine(
    SQLALCHEMY_DATABASE_URL, connect_args={}
)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
