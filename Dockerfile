FROM python:3.8

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

WORKDIR ~

COPY src src
COPY data src/data
RUN ls
EXPOSE 8050
CMD ["python", "./src/app_barplot.py"]