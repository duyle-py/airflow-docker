airflow-dev:
	- docker build -f env/dev/Dockerfile . -t airflow-dev
	- docker run -p 8080:8080 airflow-dev

airflow-prod:
	- docker build -f env/prod/Dockerfile . -t airflow-prod
	- docker run -e AIRFLOW__CORE__SQL_ALCHEMY_CONN=$(AIRFLOW_DB) -p 8080:8080 airflow-prod
