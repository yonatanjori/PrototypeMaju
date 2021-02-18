from flask import Flask, request, render_template, session, url_for, redirect, flash, redirect, jsonify
from flask_mysqldb import MySQL
import secrets

from authlib.integrations.flask_client import OAuth
import os
from datetime import timedelta

# decorator for routes that should be accessible only by logged in users
from auth_decorator import login_required

from flaskext.mysql import MySQL
import pymysql

import sys

import pickle

import pandas as pd
import numpy as np


# App config
app = Flask(__name__)
# Session config
app.secret_key = "secretkey"
app.config['SESSION_COOKIE_NAME'] = 'google-login-session'
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(minutes=5)


answers = {
 'bus_type':['Fashion','Technology','Education','Food & Beverage','Beauty','Home & Living','Other'],
 'dm_active':['Selalu, digital marketing adalah platform marketing utama','Cukup sering, ketika sedang promosi produk baru dan keperluan lainnya',
 'Cukup jarang, hanya ketika ingat saja atau ada keperluan tertentu','Baru ingin mencoba'],
 'bus_ageTarget':['13-17','18-29','30-35','35-40','41-45','45-49','>50'],
 'bus_genderTarget':['Pria','Wanita','Keduanya'],
 'dm_purpose':['Meningkatkan brand awareness', 'Mempertahankan pelanggan', 'Mendapatkan pelanggan baru', 'Meningkatkan customer participation'],
 'content_interest1':['Tren','Strategi Marketing','Campaign Design','Advertisements','Tutorials','Customer Relation', 'Management']
}


#706424575424-jldnchnk082h8gadobt7pgssk7o7lfb3.apps.googleusercontent.com
#l5-a_NS9ae8hqvLkRwvVTe6h
# oAuth Setup
oauth = OAuth(app)
google = oauth.register(
    name='google',
    
    client_id="706424575424-lfe1dmf84sg9hhsuhji9up6lvl1cdp09.apps.googleusercontent.com",
    
    client_secret="hKSsTPgrEikgCPCihGFLNkV_",
    access_token_url='https://accounts.google.com/o/oauth2/token',
    access_token_params=None,
    authorize_url='https://accounts.google.com/o/oauth2/auth',
    authorize_params=None,
    api_base_url='https://www.googleapis.com/oauth2/v1/',
    userinfo_endpoint='https://openidconnect.googleapis.com/v1/userinfo',  # This is only needed if using openId to fetch user info
    client_kwargs={'scope': 'openid email profile'},
)

mysql = MySQL(app)
app.secret_key = 'secretkey'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'maju'
app.config['MYSQL_DATABASE_PORT'] = 3307

mysql.init_app(app)

@app.route('/')
def front():
    return render_template('front.html')


@app.route('/login')
def login():
    google = oauth.create_client('google')  # create the google oauth client
    redirect_uri = url_for('authorize', _external=True)
    return google.authorize_redirect(redirect_uri)

@app.route('/authorized')
def authorize():
    google = oauth.create_client('google')  # create the google oauth client
    token = google.authorize_access_token()  # Access token from google (needed to get user info)
    resp = google.get('userinfo')  # userinfo contains stuff u specificed in the scrope
    user_info = resp.json()
    user = oauth.google.userinfo()  # uses openid endpoint to fetch user info
    # Here you use the profile/user data that you got and query your database find/register the user
    # and set ur own data in the session not the profile from google
    session['profile'] = user_info
    session.permanent = True  # make the session permanant so it keeps existing after broweser gets closed
        
    return insertuser()

def insertuser():
    name = dict(session)['profile']['name']
    email = dict(session)['profile']['email']
    
    conn = mysql.connect()
    cur = conn.cursor()
    
    #cur.execute("INSERT INTO user(email,name) VALUES (%s,%s)", ([email],[name]))
    
    cur.execute('SELECT * FROM profile WHERE email = %s AND name = %s', (email,name))
    account = cur.fetchone()
    
    if (account is None):
        
        cur.execute("INSERT INTO profile(email,name) VALUES (%s,%s)", ([email],[name]))
    
    conn.commit()

    cur.close()
    conn.close()
    return redirect(url_for('form'))

#####################################


@login_required
@app.route('/form')
def form():
    return render_template('kuesioner.html', answers = answers)

@login_required
@app.route('/data', methods = ['POST', 'GET'])
def data():
    print("masuk1")
    if request.method == 'GET':
        return "The URL /data is accessed directly. Try going to '/' to submit questioner"
    if request.method == 'POST':
        # Get data from form

        print("masuk")
        name = dict(session)['profile']['name']
        email = dict(session)['profile']['email']

        indata = request.form
        #id = indata['id']
        print("masuka")
        #name = indata['name']
        print("masukb")
        #email = indata['email']
        print("masukc")
        bus_type = indata['bus_type']
        print("masukd")
        dm_active = indata['dm_active']
        print("masuke")
        bus_ageTarget = indata['bus_ageTarget']
        print("masukf")
        bus_genderTarget = indata['bus_genderTarget']
        print("masukg")
        dm_purpose = indata['dm_purpose']
        print("masukh")
        dm_budget = indata['dm_budget']
        print("masuki")
        bus_avgsales = indata['bus_avgsales']
        print("masukj")
        bus_revTarget = indata['bus_revTarget']
        print("masukk")
        content_interest1 = indata['content_interest1']
        
        print("masuk2")
        conn = mysql.connect()
        cur = conn.cursor()
        cur.execute('SELECT id FROM profile WHERE email = %s AND name = %s', (email,name))
        
        userid = cur.fetchone()

        if (bus_genderTarget == 'Pria'):
            bus_genderTarget = 'M'
        elif (bus_genderTarget == 'Wanita'):
            bus_genderTarget = 'F'
        else:
            bus_genderTarget = 'B'
        
        print(userid)

        # Post data to MySQL
        print("masuk3")
        cur.execute('UPDATE profile SET bus_type = %s, dm_active = %s, bus_ageTarget = %s, bus_genderTarget = %s, dm_purpose = %s, dm_budget = %s,bus_avgsales = %s,bus_revTarget = %s,content_interest1 = %s WHERE id = %s', (bus_type,dm_active,bus_ageTarget,bus_genderTarget,dm_purpose,dm_budget,bus_avgsales,bus_revTarget,content_interest1,userid[0]))
        conn.commit()
        cur.close()
        conn.close()
        print("masuk4")
        return redirect('/home')

@login_required
@app.route('/analytics')
def analytics():
    return render_template('analytics.html')

@login_required
@app.route('/channels')
def channels():
    return render_template('channels.html')

@login_required
@app.route('/home')
def home():
    return render_template('homepage.html')

@app.route('/disc', methods = ['GET'])
# @login_required
def discover():
    name = dict(session)['profile']['name']
    email = dict(session)['profile']['email']

    conn = mysql.connect()
    cur = conn.cursor()

    cur.execute('SELECT bus_type, dm_active, dm_purpose, content_interest1, bus_ageTarget FROM profile WHERE email = %s AND name = %s', (email,name))
    account = cur.fetchone()
    tagType = converting(account[0])
    tagActive = converting(account[1])
    tagPurpose = converting(account[2])
    tagInterest = converting(account[3])

    print(tagType, file=sys.stderr)
    print(tagActive, file=sys.stderr)
    print(tagPurpose, file=sys.stderr)
    print(tagInterest, file=sys.stderr)

    #Fetch data contents
    cur.execute('SELECT title, `desc`, contentid, status1 FROM contents WHERE tag1 IN (%s,%s,%s,%s) OR tag2 IN (%s,%s,%s,%s)',(tagType,tagActive,tagPurpose,tagInterest,tagType,tagActive,tagPurpose,tagInterest))
    data = cur.fetchall()
    print(data, file=sys.stderr)
    
    conn.commit()
    cur.close()
    conn.close()

    #Recommendations
    RecommChannel = channelRec(account)
    RecommMarketing = marketingRec(account)

    return (render_template('discover2.html', data=data, name=name, email=email, RecommChannel=RecommChannel, RecommMarketing=RecommMarketing))

def converting(preConverted):
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute('SELECT tagid FROM convert_tag WHERE tag = %s', [preConverted])
    converted = cur.fetchone()
    conn.commit()
    cur.close()
    conn.close()
    return (converted)

def channelRec(account):
    #Channel Recommendations
    channelRec = []
    channelRec = ['' for i in range(9)] 
    if account[4] == '13-17':
        channelRec = ['Youtube','Instagram']
    elif ((account[4] == '18-29') or (account[4] == '30-35')):
        channelRec = ['Facebook','Instagram','Twitter','Blog','Google Ads']
    elif ((account[4] == '35-40') or (account[4] == '41-45')):
        channelRec = ['Email','Facebook','Blog','Google Ads']
    elif account[4] == '45-49':
        channelRec = ['Email','Blog','Google Ads']
    elif account[4] == '>50':
        channelRec = ['Youtube','Blog','Email','Google Ads']
    return(channelRec)

def marketingRec(account):
    #Marketing Recommendations
    marketingRec = []
    channelRec = ['' for i in range(9)] 
    if account[2] == 'Meningkatkan brand awareness':
        marketingRec = ['Search Engine Marketing','Email Marketing','Content Marketing','Social Media Marketing']
    elif account[2] == 'Mempertahankan pelanggan':
        marketingRec = ['Social Media Marketing','Email Marketing']
    elif account[2] == 'Mendapatkan pelanggan baru':
        marketingRec = ['Online Ad','Search Engine Marketing']
    elif account[2] == 'Meningkatkan customer participation':
        marketingRec = ['Social Media Marketing']
    return(marketingRec)



@app.route('/disc/<contentid>')
@login_required
def discoverContent(contentid):
    name = dict(session)['profile']['name']
    email = dict(session)['profile']['email']

    conn = mysql.connect()
    cur = conn.cursor()

    cur.execute("SELECT title, text FROM contents WHERE contentid = %s", [contentid])
    data = cur.fetchone()
    title = data[0]
    text = data[1]
    print(data, file=sys.stderr)

    cur.execute("UPDATE contents SET status1='read' WHERE contentid = %s", [contentid])
    conn.commit()
    cur.close()
    conn.close()
    return (render_template('discContent.html', text=text, title=title, name=name, email=email))

#####################################


#++++++++++++++++++++++++++++++++++++#


model = pickle.load(open('model.pkl','rb'))

@app.route('/profile')
#@login_required
def profile():
    return render_template('profiletest.html')

@app.route('/edit')
#@login_required
def editprofile():
    return render_template('editprofile.html')

@app.route('/conversion')
#@login_required
def conversion():
    # if request.method == 'POST':
        # channel = request.form
    #     print(channel,file=sys.stderr)
    return render_template('conversiontest.html')

@app.route('/predict',methods=['POST'])
#@login_required
def predict():
    if request.method == 'POST':
        features = request.form
        print(*features, file=sys.stderr)

        age = int(features['Age'])
        gender = int(features['Gender'])
        CPC = 0.45
        ROAS = int(features['ROAS']) / 100

        if(features['Interest'] == "Aksesoris"):
            interest = 15
        elif(features['Interest'] == "Pakaian"):
            interest = 16
        elif(features['Interest'] == "Sepatu"):
            interest = 18
        elif(features['Interest'] == "Tas"):
            interest = 19

        features = [age, gender, interest, CPC, ROAS]
        final_features = [np.array(features)]
        col_names=['age','gender','interest','CPC','ROAS']
        final_features=pd.DataFrame(final_features,columns=col_names)
        pred = model.predict(final_features)
        predicted_CVR = pred[0] * 100
        print(predicted_CVR, file=sys.stderr)
        return render_template('conversiontest.html', predicted_CVR='{}%'.format(predicted_CVR))

#++++++++++++++++++++++++++++++++++++#

@app.route('/logout')
def logout():
    for key in list(session.keys()):
        session.pop(key)
    return redirect('/')

# @app.route('/')
# def landing ():
#     #email = dict(session)['profile']['email']
#     return render_template("landing.html")

#@app.route('/homepage', methods = ['GET','POST','PUT'])
# @app.route('/homepage')
# @login_required
# def homepage():
#     name = dict(session)['profile']['name']
#     email = dict(session)['profile']['email']
#     return render_template("homepage.html", name=name, email=email)


#'''


###########################################
@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Not Found: ' + request.url,
    }
    resp = jsonify(message)
    resp.status_code = 404

    return resp

if __name__ == "__main__":
    app.run()

