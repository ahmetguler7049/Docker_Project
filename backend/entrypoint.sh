#!/bin/bash
if [ "$COMMANDS" = "1" ]; then
	python manage.py migrate --noinput
#	python manage.py collectstatic --noinput
	python manage.py createsuperuser --username="$DJANGO_SUPER_USERNAME" --email="$DJANGO_SUPER_USER_EMAIL" --no-input
fi
python manage.py runserver 0.0.0.0:8007

# To make migrations in continuous development, RUN:
# docker-compose exec app_nse_bc python manage.py makemigrations
# docker-compose exec app_nse_bc python manage.py migrate
