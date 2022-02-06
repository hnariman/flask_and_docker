FROM python:3.10-alpine

MAINTAINER Nariman Huseynov 'hnariman@gmail.com'

# cache layer: packages
WORKDIR /server
COPY ./requirements.txt /server/requirements.txt
RUN pip install -r requirements.txt

# cache layer: code
COPY . /server/

# ENTRYPOINT ["python"]

CMD ["python","server.py"]
