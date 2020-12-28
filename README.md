# airflow-docker
Simple Develop and Production Environments by Docker Files

## How to use
- Put all DAGs into `dags` folder.

### Develop Environment
- Run this following for running Airflow Components

```
make airflow-dev
```

- Airflow UI is running in port 8080, you can access localhost:8080 and login with the following credential:
```
username: admin
password: admin
```


### Production Environment
- Please complete Database Metadata `AIRFLOW_DB` before running commands
``` 
AIRFLOW_DB=postgresql+psycopg2://<user>:<password>@<host>:<port>/<database>
make airflow-prod
```

## To do
[] Auto refresh DAGs without build Docker Image agin in Production Environment
