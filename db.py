import psycopg2
import os
from dotenv import load_dotenv

load_dotenv()

def get_db_connection():
    return psycopg2.connect(
        host = os.getenv("db_host"),
        database = os.getenv("db_name"),
        user = os.getenv("db_user"),
        password = os.getenv("db_pass")
    )