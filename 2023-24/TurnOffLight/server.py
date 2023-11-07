from flask import Flask, request, render_template, redirect, url_for, session
from pymongo import MongoClient
import os
import json

app = Flask(__name__)
app.secret_key = os.urandom(24)

FLAG = open('flag.txt', 'r').read()

# Connect to MongoDB (assuming it's running locally)
client = MongoClient('mongodb://mongo-db:27017/')
# client = MongoClient('mongodb://localhost:27017/')
db = client['ctf_db']
users = db['user']

# Define a function to check if a user exists and the provided password is correct
def authenticate(username, password):
    user = users.find_one({'username': username, 'password': password})
    return user

@app.route('/')
def signup():
    return render_template('signup.html')

@app.route('/login', methods=['POST'])
def login():
    try:
        data = json.loads(request.data)
        username = data.get('username')
        password = data.get('password')

        if username and password:
            user = authenticate(username, password)

            if user:
                return render_template('dashboard.html', username=username, flag=FLAG)
            else:
                return redirect(url_for('signup'))
        else:
            return "Invalid JSON data. Please provide 'username' and 'password' in the JSON payload.", 400
    except json.JSONDecodeError:
        return "Invalid JSON format.", 400

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5000)