# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /yuvraj-jtu-22-assignment

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
RUN pip install --no-cache-dir -r requirements.txt

# Copy your codebase into the Docker container.
COPY . /yuvraj-jtu-22-assignment

# Run FastAPI server on the port exposed above.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]