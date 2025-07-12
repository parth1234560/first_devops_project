# Use UBI8 with Python 3.11 pre-installed
FROM redhat/ubi8

# Set working directory
RUN yum install python3 -y

# Ensure pip is available
# (ubi8/python-311 already provides pip, but you can upgrade)
RUN pip3 install flask

# Copy app, tests, and README
COPY app.py  /app.py
# Install dependencies

# Expose application port (adjust if needed)

# Default entrypoint to run app
CMD ["python3.11", "app.py"]
