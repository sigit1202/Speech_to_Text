import os
from flask import Flask

app = Flask(__name__)

# Ambil environment variables
app.config["SECRET_KEY"] = os.getenv("SECRET_KEY", "default_secret")
port = int(os.getenv("PORT", 5000))

@app.route("/")
def home():
    return "Flask API Berjalan di Render!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=port)
