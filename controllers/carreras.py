from db import get_db_connection
from services.run_sql import run_query

def obtener_carreras():
    carreras = run_query("select * from Carreras", True)
    return [{"id": c[0], "nombre": c[1]} for c in carreras]