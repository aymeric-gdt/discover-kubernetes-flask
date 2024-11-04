from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from the backend!"

@app.route('/data')
def data():
    # Exemple d'utilisation du volume persistant
    if os.path.exists('/app/data/example.txt'):
        with open('/app/data/example.txt', 'r') as f:
            return f.read()
    else:
        return "No data found"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
