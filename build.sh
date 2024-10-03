#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate

# Crear superusuario sin interacción (nombre de usuario: admin, contraseña: password123)
#echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'password123')" | python manage.py shell