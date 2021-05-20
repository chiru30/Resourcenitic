from flask import Flask,request, render_template
from flask_mysqldb import MySQL
import pickle
import numpy as np
import pandas as pd
app = Flask(__name__)


app.config['MYSQL_HOST']= 'sql180.main-hosting.eu'
app.config['MYSQL_USER']= 'u563163349_timsal'
app.config['MYSQL_PASSWORD']= '5>lKE$XbNq0b'
app.config['MYSQL_DB']= 'u563163349_national'

mysql = MySQL(app)

@app.route('/national2')
def national2():
    return render_template('national.html')

@app.route('/gdprate')
def gdp():
    return render_template('gdp.html')

@app.route('/export_import')
def expoimport():
    return render_template('export_import.html')

@app.route('/national1', methods=['POST'])
def nationalchart():
    if request.method == 'POST':
      state = request.form['state']
      cur = mysql.connection.cursor()
      cur.execute("SELECT nationshare.nationalshare FROM nationshare WHERE statename = % s ", (state, ))
      fetchdata = cur.fetchall()[0]
      fetchdata= fetchdata[0]
      cur.close()
    return render_template('national.html', data= fetchdata)


@app.route('/gdp', methods=['POST'])
def gdpshare():
    if request.method == 'POST':
      country = request.form['country']
      cur = mysql.connection.cursor()
      cur.execute("SELECT gdpshare.Gdp FROM gdpshare WHERE Country_Name = % s ", (country, ))
      fetchdata = cur.fetchall()[0]
      fetchdata= fetchdata[0]
      cur.close()
    return render_template('gdp.html', data= fetchdata)



@app.route('/export_import_rate', methods=['POST'])
def expoimpo():
    if request.method == 'POST':
      country = request.form['country']
      cur = mysql.connection.cursor()
      cur.execute("SELECT export_import_share.Export FROM export_import_share WHERE Country = % s ", (country, ))
      fetchdata = cur.fetchall()[0]
      fetchdata = fetchdata[0]
      cur.execute("SELECT export_import_share.Import FROM export_import_share WHERE Country = % s ", (country, ))
      fetchdata1 = cur.fetchall()[0]
      fetchdata1 = fetchdata1[0]
      cur.execute("SELECT export_import_share.Total_Trade FROM export_import_share WHERE Country = % s ", (country, ))
      fetchdata2 = cur.fetchall()[0]
      fetchdata2 = fetchdata2[0]
      cur.execute("SELECT export_import_share.value FROM export_import_share WHERE Country = % s ", (country, ))
      fetchdata3 = cur.fetchall()[0]
      fetchdata3 = fetchdata3[0]
      cur.close()
    return render_template('export_import.html', Export= fetchdata, Import=fetchdata1, trade= fetchdata2, value=fetchdata3)

@app.route('/')
def homepage():
    return render_template('index.html')


@app.route('/home')
def index():
    return render_template('main.html')

@app.route('/land')
def index1():
    return render_template('land.html')

@app.route('/Estimator')
def index2():
    return render_template('Estimator.html')

@app.route('/predict', methods = ['POST'])
def predict():
    if request.method== 'POST':
        
        TGA = request.form['TGA']
        TGE = request.form['TGE']
        NGA = request.form['NGA']
        NGE = request.form['NGE']
        HGA = request.form['HGA']
        HGE = request.form['HGE']
        data =[TGA,TGE,NGA,NGE,HGA,HGE]
        data = np.array(data).reshape(-1,6)
        Ps= pickle.load(open('decision_tree_model_final.pkl','rb'))
        prediction = Ps.predict(data)[0]
        if prediction == 4:
            pre ="Western"
        if prediction == 3:
            pre ="Southern"
        if prediction == 2:
            pre ="Northern"
        if prediction == 1:
            pre = "NorthEastern"
        if prediction == 0:
            pre = "Eastern"
    return render_template('main.html',prediction= pre)


@app.route('/predict1', methods = ['POST'])
def predict1():
    if request.method== 'POST':
        
        NY = request.form['NY']
        WY = request.form['WY']
        YF = request.form['YF']
        data =[NY,WY,YF]
        data = np.array(data).reshape(-1,3)
        Ps= pickle.load(open('yield_factor.pkl','rb'))
        prediction = Ps.predict(data)[0]
        if prediction == 0:
            pre ="Crop Land"
        if prediction == 2:
            pre ="grazing Land"
        if prediction == 5:
            pre ="marine fishing grounds"
        if prediction == 4:
            pre = "inland fishing grounds"
        if prediction == 1:
            pre = "forest land"
        if prediction == 3:
            pre = "infrastructure"
    return render_template('land.html',prediction= pre)  

@app.route('/predict2', methods = ['POST'])
def estimate():
    if request.method== 'POST':
        
        cp = request.form['cp']
        data =[cp]
        data = np.array(data).reshape(-1,1)
        Ps= pickle.load(open('e hack random forest_pkl','rb'))
        prediction = Ps.predict(data)[0]
    return render_template('Estimator.html',prediction= prediction)
 



if __name__ == '__main__':
    app.run(debug=True)
    
