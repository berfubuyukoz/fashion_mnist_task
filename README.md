# Classifying Fashion-MNIST data

### TODO:

- Ipynb is opened in readonly.

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

      docker build --tag=f-mnist .

- Run docker image on port 8888 with tty mode active

      docker run -d -p 8888:8888 f-mnist start-notebook.sh --NotebookApp.password='sha1:74ba40f8a388:c913541b7ee99d15d5ed31d4226bf7838f83a50e'

      
- Type on bash:

      jupiter-notebook

You can now view and run notebook.

- Control + C to exit jupyter.
 
## References
- [Docker](https://www.docker.com/)
- [Fashion-MNIST](https://research.zalando.com/welcome/mission/research-projects/fashion-mnist/)



