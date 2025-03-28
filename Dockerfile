# Gunakan image Python
FROM python:3.9

# Set working directory di container
WORKDIR /app

# Copy semua file ke container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Jalankan aplikasi
ENV PORT=5000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
