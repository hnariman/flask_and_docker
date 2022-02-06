#!/bin/python
from flask import Flask, render_template

app = Flask(__name__, template_folder="public");

@app.route('/')
def index():
    return render_template('index.html', name="some hero")

@app.route('/<name>')
def greet(name):
    return render_template('name.html', name=name[::-1])

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=4343, debug=True)

