# <Project_Name> Container
FROM python:3.11-slim-buster

# Set the working directory
WORKDIR /app

# Update OS package list, install packages, and clear apt cache
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the Python pip requirements file
COPY requirements/requirements.txt requirements/requirements.txt

# Upgrade pip and install requirements from the requirements file
RUN python -m pip install --no-cache-dir --upgrade pip && \
    python -m pip install --no-cache-dir -r requirements/requirements.txt && \
    rm -rf requirements

# Set the PYTHONPATH environment variable
ENV PYTHONPATH=/app

COPY /app /app

# Start the bash prompt
CMD ["/bin/bash"]
