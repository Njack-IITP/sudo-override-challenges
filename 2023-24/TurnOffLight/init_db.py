from pymongo import MongoClient

# Connect to MongoDB (assuming it's running locally)
client = MongoClient('mongodb://mongo-db:27017/')
db = client['ctf_db']
users = db['user']

# insert a user 
users.insert_one({'username': 'admin', 'password': 'ceRiZ3qZ0zxutx17wci1'})