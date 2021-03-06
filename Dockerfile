FROM python:3.7.3-stretch

## Step 1:
WORKDIR /dockapp

## Step 2:
# Copy source code to working directory
COPY app/ /dockapp/
COPY requirements.txt /dockapp/


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt


## Step 4:
# Expose port 4567
EXPOSE 4567
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
