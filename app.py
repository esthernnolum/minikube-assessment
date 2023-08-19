# pthon task that only accepts GET requests on the path "/foo" and returns a JSON response
from flask import Flask, jsonify

app = Flask(__name__)

# Define your favorite colour
favorite_colour = "SkyBlue"

@app.route('/foo', methods=['GET'])
def get_favorite_colour():
    response_data = {"myFavouriteColour": favorite_colour}
    return jsonify(response_data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
