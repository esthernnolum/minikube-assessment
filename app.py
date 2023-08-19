# pthon task that only accepts GET requests on the path "/foo" and returns a JSON response
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/foo', methods=['GET'])
def get_favourite_color():
    response = {"myFavouriteColor": "SkyBlue"}
    return jsonify(response)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)