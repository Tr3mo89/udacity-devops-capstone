
from flask import Flask, escape, request

## Start flask app
app = Flask(__name__)

@app.route('/')
def hello():
    name = request.args.get("name", "World [ 3 ]")
    return f'Hello, {escape(name)}!'


if __name__ == '__main__':
    ## Run app on localhost with port 80
    app.run(host="0.0.0.0", port=80)