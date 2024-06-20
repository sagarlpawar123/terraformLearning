# Use an existing Docker image as a base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 to the outside world
EXPOSE 80

# Define environment variable
ENV NAME World

# Command to run the application when the container starts
CMD ["python", "app.py"]
