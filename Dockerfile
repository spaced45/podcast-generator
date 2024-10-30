FROM ubuntu:latest

# Update package list and install Python and Git
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-full \
    git

# Install PyYAML using pip
RUN pip3 install PyYAML

# Copy your scripts into the container
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/entrypoint.sh"]
