from flask import Blueprint, jsonify, request
from controllers.carreras import obtener_carreras

carreras_bp = Blueprint("carreras", __name__)

@carreras_bp.route("/carreras", methods=["GET"])
def get_carreras():
    return jsonify(obtener_carreras())