# Classifying Fashion-MNIST data

---

This is the Dockerfile for a program which trains a Neural Network model that classifies Fashion-MNIST data. 
Use this Dockerfile to create image that has an Ipython Notebook code.

## Requirements to use this Dockerfile:

- [Docker](https://www.docker.com/)

## Instructions to run the app:

- Download the repository into your local.
- Make sure that project directory name is **fashion_mnist_task**.
- Cd to project directory, aka, **fashion_mnist_task**.
- In order to build the image run the following command (the dot at the end is included in the command): 

      docker build --tag=fmnist .

- Run docker image on port 8888

      docker run -d -v /$(pwd)/:/home/jovyan/work -p 8888:8888 fmnist start-notebook.sh --NotebookApp.token=''

      
- Open browser, write localhost:8888/?token=<token>

where <token> is the token appeared on terminal.

      jupiter-notebook

You can now view and run notebook.

- Control + C to exit jupyter.
 
## References
- [Docker](https://www.docker.com/)
- [Fashion-MNIST](https://research.zalando.com/welcome/mission/research-projects/fashion-mnist/)



