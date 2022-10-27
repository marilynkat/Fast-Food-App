from flask import Flask, render_template
 
app = Flask(__name__)
 
@app.route('/')
def hello_world():
    return 'Hello World'

@app.route('/2')
def hello_world2():
    return render_template('vote.html')
 
@app.route('/3')
def hello_world3():
    return render_template('random.html')

@app.route('/4')
def hello_world4():
    return render_template('bucketList.html')

if __name__ == '__main__':
    app.run()