FROM postgres:latest

# Install the plpython extension based on the PG_MAJOR version defined in the parent image
RUN apt-get update \
 && apt-get install -y postgresql-plpython-$PG_MAJOR \
 && rm -rf /var/lib/apt/lists/*
