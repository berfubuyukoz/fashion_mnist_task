FROM gaarv/jupyter-keras

# Set the working directory to /fashion_mnist_task
WORKDIR /fashion_mnist_task

# Copy the current directory contents into the container at /fashion_mnist_task
COPY . /fashion_mnist_task

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
USER root
RUN /bin/bash -c 'chmod -R 777 ./'
