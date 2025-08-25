FROM python:3.11-slim

WORKDIR /app

# Make sure filename matches exactly
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]