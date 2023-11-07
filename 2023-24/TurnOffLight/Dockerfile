# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables (if needed)
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

# Run app.py when the container launches
CMD ["python3", "server.py"]