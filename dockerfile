FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary application files
COPY app.py  .  

# Install dependencies without caching
RUN pip install --no-cache-dir  flask

# Expose the correct port
EXPOSE 5002

# Command to run the Flask application
CMD ["python", "app.py"]
