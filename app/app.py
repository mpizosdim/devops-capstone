from flask import Flask
app = Flask(__name__)
f = open("data/dummyfiletoread.txt", "r")
dymmydata = f.read()


@app.route('/')
def hello():
    return "Hello World changed!"


@app.route('/getdummydata')
def getdummydata():
    return str(dymmydata)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4567, debug=True)