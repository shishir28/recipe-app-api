FROM  python:3.9-alpine
LABEL key="Shishir" 

ENV PYTHONUNBUFFERED 1

COPY  ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser  -D user  
USER user 
# -D create user , User user switches to docker user we created above 