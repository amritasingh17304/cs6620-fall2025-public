# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app
# Copy requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files
COPY . .
# Expose port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
