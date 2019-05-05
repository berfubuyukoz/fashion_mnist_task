# Classifying Fashion-MNIST data

### TODO:

- Currently user needs to download fashion-mnist data and place manually. Search for alternative ways - see Docker volumes etc.

- Due to lack of GraphViz pydot gives an error.

- Ipynb is opened in readonly.

---

This is the Dockerfile for a program which trains a Neural Network model that classifies Fashion-MNIST data. 
Use this Dockerfile to create image that has an Ipython Notebook code.

## Requirements to use this Dockerfile:

- [Docker](https://www.docker.com/)
- [Fashion-MNIST data](https://www.kaggle.com/zalando-research/fashionmnist)

## Instructions to run the app:

- Download the Dockerfile to your computer.
- Download the Fashion-MNIST data from [here](https://www.kaggle.com/zalando-research/fashionmnist).
- Put Dockerfile and the data under a folder named **fashion_mnist_task**.
- Cd to **fashion_mnist_task** folder.
- In order to build the image run the following command (the dot at the end is included in the command): 

      docker build --tag=any-tag-name .

- Run docker image on port 8888 with tty mode active

      docker run -p 8888:8888 -it any-tag-name /bin/bash
      
- Type on bash:

      jupiter-notebook

- Copy the URL shown on the bash, paste to your browser (an example url is as follows:)

      localhost:8888/?token=364e3a4cbc491282ca3192a9de20ba8967e9aeafca4cb01d

You can now view and run (read-only) the Ipython Notebook.

## References
- [Docker](https://www.docker.com/)
- [Fashion-MNIST](https://research.zalando.com/welcome/mission/research-projects/fashion-mnist/)
- [Fashion-MNIST Kaggle Challenge](https://www.kaggle.com/zalando-research/fashionmnist)


