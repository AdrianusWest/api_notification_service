install:
	poetry install

lint:
	poetry run flake8 notification_service

#test:
#	poetry run pytest
#
#test-coverage:
#	poetry run pytest --cov=notification_service --cov-report xml

migrate:
	poetry run python manage.py makemigrations
	poetry run python manage.py migrate

runserver:
	poetry run python manage.py runserver 127.0.0.1:8000
	celery -A notification_service worker -l info
	celery -A notification_service flower --port=5555
