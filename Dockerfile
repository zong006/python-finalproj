
FROM  python:3.10-slim

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN python -m venv venv

RUN ./venv/bin/pip install --no-cache-dir -r requirements.txt


ENV PATH="/app/venv/bin:$PATH"
EXPOSE 5000


CMD ["python", "app.py"]
