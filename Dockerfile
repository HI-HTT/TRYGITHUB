FROM python:3.9-slim-buster

RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip3 install -r requirements.txt
ADD . /app/

ENTRYPOINT [ "python" ]
CMD ["application.py"]
