from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World! Your Flask app is running inside a Docker container!"

if __name__ == '__main__':
    # Bind to 0.0.0.0 to ensure it works inside the container
    app.run(host='0.0.0.0', port=5002)
