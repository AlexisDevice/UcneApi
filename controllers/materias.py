from db import get_db_connection
from services.run_sql import run_query

def obtener_materias():
    materias = run_query("select * from Materias", True)
    return [{
        "materiaId": m[0],
        "nombre": m[1],
        "codigo": m[2],
        "profesorId": m[3],
        "carreraId": m[4]}
        for m in materias]

def obtener_materia(codigo):
    materia = run_query(f"select * from Materias where codigo like '{codigo}'", True)
    return materia