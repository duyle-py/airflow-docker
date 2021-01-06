airflow-dev:
	- docker build -f airflow/dev/Dockerfile . -t airflow-dev
	- docker run -p 8080:8080 airflow-dev

airflow-prod:
	- docker build -f airflow/prod/Dockerfile . -t airflow-prod
	- docker run -e AIRFLOW__CORE__SQL_ALCHEMY_CONN=$(AIRFLOW_DB) -v $(pwd)/dags:/root/airflow/dag -p 8080:8080 airflow-prod