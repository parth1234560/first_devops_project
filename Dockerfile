# Use UBI8 with Python 3.11 pre-installed
FROM registry.access.redhat.com/ubi8/python-311

# Set working directory
WORKDIR /app

# Ensure pip is available
# (ubi8/python-311 already provides pip, but you can upgrade)
RUN pip3.11 install --upgrade pip

# Copy app, tests, and README
COPY app.py test_first.py README.md requirements.txt ./

# Install dependencies
RUN pip3.11 install --no-cache-dir -r requirements.txt

# Run tests during build
RUN pytest test_first.py

# Expose application port (adjust if needed)
EXPOSE 5000

# Default entrypoint to run app
CMD ["python3.11", "app.py"]
