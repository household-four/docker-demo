# Adding python base image more images can be found at https://hub.docker.com/ for
# many different languages and frameworks
FROM python:3.12-slim-bookworm

# Directory which the application will run from (This should be the root of your project directory)
WORKDIR .

# Copying requirements file into the container dot (.) indicates all
# requirements listed within the file
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Adding all project files to container
COPY . .

# Expose the application to the point which it will run on (MUST BE A VALID PORT)
EXPOSE 8080

CMD ["python","src/cli_calculator.py"]
