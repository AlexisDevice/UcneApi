from flask import Flask, jsonify, request
from flask_cors import CORS
from routes.usuarios import usuarios_bp
from routes.carreras import carreras_bp
from routes.materias import materias_bp
from routes.profesores import profesores_bp
from routes.comentarios import comentarios_bp
# inicializa el servidor
app = Flask(__name__)

CORS(app)

@app.route("/", methods=["GET"])
def Home():
    return jsonify({"mensaje": "Ucne Api"}), 200

app.register_blueprint(usuarios_bp)
app.register_blueprint(profesores_bp)
app.register_blueprint(carreras_bp)
app.register_blueprint(materias_bp)
app.register_blueprint(comentarios_bp)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)