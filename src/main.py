from flask import Flask

app = Flask(__name__)

# create a function suma
def suma(a,b):
   return a+b


@app.route('/')

# create a function hello
def hello():
   
   res = suma(3,8)     
   return '\n ******** the sum from the python function is: %s' %(res) + ' *********\n\n'


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000)
