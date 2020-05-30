# choose base python3 image 
FROM python:3

# create working directory
WORKDIR /app

# copy content to container
COPY . /app/

# upgrade pip and install dependencies from requirements file
RUN  pip install --upgrade pip==20.1.1 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# expose app to port 8000
EXPOSE 8000

# run application
CMD [ "python", "manage.py", "runserver","0.0.0.0:8000" ]
