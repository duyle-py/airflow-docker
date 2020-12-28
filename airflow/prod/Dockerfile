FROM python:3.8

RUN pip install --upgrade pip==20.2.4
RUN pip install apache-airflow==2.0.0
RUN pip install 'apache-airflow-providers-postgres'==1.0.0

WORKDIR /root/airflow

COPY env/dev/airflow.cfg .

COPY dags dags

CMD ["sh", "-c", "airflow db init ; airflow webserver & airflow scheduler"]
