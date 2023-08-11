FROM python:3.11.4
COPY . /app
WORKDIR /app
RUN pip3 install -r requirments.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app