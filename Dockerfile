FROM node:11

# Include Pip
RUN apt-get update && apt-get install -y --no-install-recommends \
    python-setuptools \
    python-pip \
    python-wheel

# Install Ansible
RUN pip install ansible==2.9.4

# Install Rsync
RUN apt-get update && apt-get install -y --no-install-recommends rsync