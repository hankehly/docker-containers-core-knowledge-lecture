FROM python:3.9.13
WORKDIR /app
COPY scripts/hello_world.py .
CMD python hello_world.py
