FROM python:3.9-slim-buster

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . /app/

ENTRYPOINT [ "python" ]
CMD ["application.py"]
