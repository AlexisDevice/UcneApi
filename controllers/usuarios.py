from db import get_db_connection
from services.run_sql import run_query

def obtener_usuarios():
    usuarios = run_query("select * from Usuarios", True)
    return [{
        "id": u[0],
        "nombre": u[1],
        "email": u[2]} for u in usuarios]

def obtener_usuario(id):
    usuario = run_query(f"select * from Usuarios where id = {id}", True)
    u = usuario[0]
    return {"id": u[0], "nombre": u[1], "email": u[2], "matricula": u[3]}

def login_usuario(email, password):
    usuario = run_query(f"select * from Usuarios where email = '{email}';", True)
    usuario = usuario[0]

    if usuario and usuario[4] == password:
        return {"id": usuario[0], "name": usuario[1], "email": usuario[2]}
    return False

def sign_usuario(name, email, matricula, password):
    run_query(f"insert into Usuarios (user_name, matricula, email, user_password) values ('{name}', '{matricula}', '{email}', '{password}');", False)
    return True