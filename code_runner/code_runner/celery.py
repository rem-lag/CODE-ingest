import os
from celery import Celery

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'code_runner.settings')

app = Celery('code_runner')
app.config_from_object('django.conf:settings', namespace='CELERY')
app.autodiscover_tasks()