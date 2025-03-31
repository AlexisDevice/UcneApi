from flask import Blueprint, jsonify, request
from controllers.usuarios import obtener_usuarios, login_usuario, sign_usuario, obtener_usuario

usuarios_bp = Blueprint("usuarios", __name__)

@usuarios_bp.route("/usuarios", methods=["GET"])
def get_users():
    return jsonify(obtener_usuarios())

@usuarios_bp.route("/usuario/<id>", methods=["GET"])
def get_user(id):
    return jsonify(obtener_usuario(id))

@usuarios_bp.route("/auth/login", methods=["POST"])
def login():
    params = request.get_json()
    if "email" not in params or "password" not in params:
        return jsonify({"error": "Faltan datos"}), 400
    
    user = login_usuario(params["email"], params["password"])

    if user:
        return jsonify({"mensaje": True, "user": user}), 200

    return jsonify({"error": "Credenciales incorrectas"}), 401

@usuarios_bp.route("/auth/signup", methods=["POST"])
def signup():
    params = request.get_json()
    res = sign_usuario(params["user_name"], params["email"], params["matricula"], params["password"])
    if res:
        return jsonify({"mensaje": "Creado con exito"}), 200
    
    return jsonify({"mensaje": "Ocurrio un error"}), 500