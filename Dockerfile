FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

COPY . .

# Run Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
