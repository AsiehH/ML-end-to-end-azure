FROM python:3.9
#FROM amd64/python:3.9

WORKDIR /app
COPY . /app

RUN apt update -y && apt install -y awscli -y

RUN pip install -r  requirements.txt

CMD ["python3", "app.py"]
#CMD ["uvicorn", "main:app", "--reload", "--workers", "1", "--host", "0.0.0.0", "--port", "8000"]




