from flask import Blueprint, jsonify, request
from controllers.profesores import obtener_profesores

profesores_bp = Blueprint("profesores", __name__)

@profesores_bp.route("/profesores", methods=["GET"])
def get_profesores():
    return jsonify(obtener_profesores())