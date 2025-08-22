from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World! This is demo project"

if __name__ == "__main__":
    # Bind to all interfaces so it works in Docker/VMs
    app.run(host="0.0.0.0", port=5000)
