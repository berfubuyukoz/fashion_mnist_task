#minimal-notebook has only Jupyter and Python
FROM jupyter/minimal-notebook

# Set the working directory to /fashion_mnist_task
WORKDIR /fashion_mnist_task

# Copy the current directory contents into the container at /fashion_mnist_task
COPY . /fashion_mnist_task

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt



