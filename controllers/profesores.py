from db import get_db_connection
from services.run_sql import run_query

def obtener_profesores():
    profesores = run_query("select * from Profesores", True)
    return [{
        "profesorId": p[0],
        "nombre": p[1],
        "apellido": p[2],
        "correo": p[3]} for p in profesores]