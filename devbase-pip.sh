# Run the build scripts
apt-get update

# Install development components.
apt-get install -y --no-install-recommends libssl-dev man python-pip
# Upgrade to the latest pip
pip install -U pip

# Clean up system
apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
