from db import get_db_connection
from services.run_sql import run_query

def obtener_comentarios():
    comentarios = run_query("select c.id, c.contenido, u.user_name, m.nombre, u.matricula " +
    "from Comentarios c inner join Usuarios u on c.usuarioId = u.id " +
    "inner join Materias m on c.materiaId = m.materiaId;", True)
    return [{
        "id": comen[0],
        "contenido": comen[1],
        "u_nombre": comen[2],
        "m_nombre": comen[3],
        "matricula": comen[4]} for comen in comentarios]

def nuevo_comentario(contenido, materiaId, usuarioId):
    run_query(f"insert into Comentarios (contenido, materiaId, usuarioId) values ('{contenido}', {materiaId}, {usuarioId});", False)
    return True