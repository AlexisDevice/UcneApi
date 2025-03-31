from flask import Blueprint, jsonify, request
from controllers.materias import obtener_materias, obtener_materia

materias_bp = Blueprint("materias", __name__)

@materias_bp.route("/materias", methods=["GET"])
def get_materias():
    return jsonify(obtener_materias())

@materias_bp.route("/materia/<codigo>", methods=["GET"])
def get_materia(codigo):
    return jsonify(obtener_materia(codigo))