from celery import Celery

app = Celery('tasks', backend='redis://localhost/0', broker='redis://localhost/')

@app.task
def add(x, y):
    return x + y
