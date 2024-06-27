from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def home():
    planet_facts = requests.get('http://planet-facts-service:5000').text
    moon_facts = requests.get('http://moon-facts-service:5000').text
    star_facts = requests.get('http://star-facts-service:5000').text
    return render_template('index.html', 
                            planet_facts=planet_facts, 
                            moon_facts=moon_facts, 
                            star_facts=star_facts)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
