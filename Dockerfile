# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-pip Image Container

FROM dockerbase/devbase

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Run the build scripts
RUN     apt-get update

RUN     apt-get install -y --no-install-recommends libssl-dev man
RUN     apt-get install -y --no-install-recommends python-pip
# Upgrade to the latest pip
RUN     pip install -U pip

# Clean up system
RUN     apt-get clean

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase

# Define default command.
CMD ["bash"]
