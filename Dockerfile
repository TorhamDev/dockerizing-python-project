# Set base image
FROM python:3.9

# Set working directory in container
WORKDIR /app

# Copy project files to container
COPY . /app

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose required ports
EXPOSE 8000

# Set default command to run the app
CMD ["python", "app.py"]
