FROM python:3.7-slim

# Set the working directory
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /code
COPY ./src ./src

# Run app.py when the container launches
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]