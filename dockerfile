# Use an official Python runtime as a parent image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app


# Install Django only
RUN pip install --upgrade pip
RUN pip install Django
RUN pip install django-debug-toolbar

# Copy project files
COPY . /app/

# Expose port 8000
EXPOSE 8000

# Run the Django development server
CMD ["python", "djangotutorial/manage.py", "runserver", "0.0.0.0:8000"]