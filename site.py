from flask import Flask,render_template,request,Markup,url_for, abort, jsonify
from flask_sqlalchemy import SQLAlchemy
import json
from datetime import datetime
import pickle


pickle_in = open('model_fakenews.pickle','rb')
pac = pickle.load(pickle_in)
tfid = open('tfid.pickle','rb')
tfidf_vectorizer = pickle.load(tfid)

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

app=Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/fake news detector'
db = SQLAlchemy(app)

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(30), unique=True, nullable=False)
    subject = db.Column(db.String(120), unique=True, nullable=False)
    message = db.Column(db.String(120), unique=True, nullable=False)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(), unique=True, nullable=False)
    tagline = db.Column(db.String(80), unique=True, nullable=False)
    slug = db.Column(db.String(50), unique=True, nullable=False)
    content = db.Column(db.String(), unique=True, nullable=False)
    img_file = db.Column(db.String(120), unique=True, nullable=False)
    date = db.Column(db.String(12), nullable=True)

@app.route("/")
def home():
    return render_template('index.html')

@app.route("/post")
def post():
    posts = Posts.query.filter_by().all()[0:params['no_of_posts']]
    return render_template('blog.html', params=params, posts=posts)

@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html',params=params,post=post)

    

@app.route("/services")
def services():
    return render_template('services.html')

@app.route("/contact", methods = ['GET','POST'])
def contact():
    if(request.method == 'POST'):
        # add entry to database
        name=request.form.get('name')
        email=request.form.get('email')
        subject=request.form.get('subject')
        message=request.form.get('message')

        entry = Contacts(name=name, email=email, subject=subject, message=message)
        db.session.add(entry)
        db.session.commit()
    return render_template('contact.html')

@app.route("/team")
def team():
    return render_template('team.html')

@app.route("/about")
def about():
    return render_template('about.html')

@app.route("/blog")
def blog():
    return render_template('post.html')

@app.route("/youtube")
def youtube():
    return render_template('youtube.html')

@app.route("/fakecheck",methods=['GET','POST'])
def fakeCheck():
    return render_template("fakecheck.html")

@app.route("/api",methods=['GET','POST'])
def api():
    abc = request.args.get('news')
    input_data =[abc.rstrip()]
    # transforming input
    tfidf_test = tfidf_vectorizer.transform(input_data)
    # predicting the input
    y_pred = pac.predict(tfidf_test)
    return jsonify(result = y_pred[0])
    
    

app.run(debug=True)