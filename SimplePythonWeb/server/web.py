from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
@app.route('/name/<name>')
def hello(name=None):
    return render_template('index.html', name=name)

if __name__ == '__main__':
    app.run('0.0.0.0')
