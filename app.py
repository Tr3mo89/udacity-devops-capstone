
from flask import Flask

## Start flask app
app = Flask(__name__)

@app.route('/')
def helloStudents():
    return "<h2>Hello Student!</h2><br><h3>This is my DevOps Capstone Project, Greetings Felix</h3>"


if __name__ == '__main__':
    ## Run app on localhost with port 80
    app.run(host="0.0.0.0", port=80)