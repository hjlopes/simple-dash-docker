FROM python:3.7

COPY requirements-circus.txt /tmp/
RUN pip install -r /tmp/requirements-circus.txt

WORKDIR ~

COPY src src
COPY data data

EXPOSE 8050

CMD ["python", "./src/app_circus.py"]