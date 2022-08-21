FROM python:3.7
COPY . /app   #copy all files from current location to a file named app
WORKDIR /app  #making this as a working directory
RUN pip install -r requirements.txt
EXPOSE  $PORT  #cloud is gonna assign port for the container when run
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app  #helps in  running python web application in heroku|based on instances it gets divided|helps in binding local host to heroku cloud