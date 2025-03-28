# Gunakan image Python
FROM python:3.9

# Set working directory di container
WORKDIR /app

# Copy semua file ke container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Jalankan aplikasi
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]
