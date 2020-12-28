FROM python:3.8

RUN pip install --upgrade pip==20.2.4

RUN pip install apache-airflow==2.0.0

WORKDIR /root/airflow

COPY env/dev/airflow.cfg .

COPY env/dev/airflow.db .

COPY dags dags

CMD ["sh", "-c", "airflow webserver & airflow scheduler"]
