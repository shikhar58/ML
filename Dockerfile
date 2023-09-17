FROM python:3.7-slim-buster
WORKDIR /tmp  
COPY . /tmp

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt

CMD ["python3","app.py"]
