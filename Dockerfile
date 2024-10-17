# Use the official Python image fo the docker hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# COpy the current directory content into the container at /app
COPY . /app

# Install any needed package specified in requirements.txt
RUN pip install flask

#Make port 500 available outside this container
EXPOSE 5000

#Run app.py when the conainer lauches
CMD ["python", "app.py"]
