# Use the official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the InsuranceAPI directory to the working directory
COPY InsuranceAPI .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt



# Expose the port on which the FastAPI application will run
EXPOSE 8000

# Set the entrypoint command to start the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]