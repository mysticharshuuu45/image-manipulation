# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt first (for efficient caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port on which the app runs
EXPOSE 5000

# Command to run the application
CMD ["python", "main.py"]
