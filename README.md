# fashion_mnist_task

### TODO:

- Currently fashion-mnist data folder cannot be found in the container. Handle data management issue in Docker - see volumes etc.)

--

This is the Dockerfile for my program which trains a Neural Network model that classifies Fashion-MNIST data. 
Use this Dockerfile to create image that has my Ipython Notebook code.

### Requirements to use this Dockerfile:

[Docker](https://www.docker.com/)

### Instructions to run the app:

- Download the Dockerfile to your computer.
- In order to build the image run the following command from the parent directory of the Dockerfile.

      docker build --tag=any-tag-name .

- Run docker image on port 8888 with tty mode active

      docker run -p 8888:8888 -it any-tag-name /bin/bash
      
- Type on bash:

      jupiter-notebook

- Copy the URL shown on the bash, paste to your browser (an example url is as follows:)

      localhost:8888/?token=364e3a4cbc491282ca3192a9de20ba8967e9aeafca4cb01d

You can now view and run (read-only) the Ipython Notebook.

