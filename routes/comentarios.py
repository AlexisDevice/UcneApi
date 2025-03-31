from flask import Blueprint, jsonify, request
from controllers.comentarios import obtener_comentarios, nuevo_comentario

comentarios_bp = Blueprint("comentarios", __name__)

@comentarios_bp.route("/comentarios", methods=["GET"])
def get_comentarios():
    return jsonify(obtener_comentarios())

@comentarios_bp.route("/new/comentario", methods=["POST"])
def post_comentario():
    params = request.get_json()
    res = nuevo_comentario(params["contenido"], params["materiaId"], params["usuarioId"])

    if res:
        return jsonify({"mensaje": "Comentario creado correctamente"}),201
    return jsonify({"mensaje": "Hubo un error"}), 400