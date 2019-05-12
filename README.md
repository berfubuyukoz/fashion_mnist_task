# Classifying Fashion-MNIST data

---

_I trained several models (of DNN and CNN type). Best model is the CNN with dropout layers, with accuracy 0.91, cross entropy loss 0.26. Please see **outfiles/cnn2_model_out** for details. To reproduce the results, please read below and run notebooks._

**Note:** There are 6 different models. You can pick one and train, then test. Training takes about 5-6 minutes on average. It is also possible to test saved models under the directory **saved_models** without training. For this you won't need to run the notebook **fashion_mnist_train.ipynb**. Please read below for details.

---

This is a program which trains a Neural Network model that classifies Fashion-MNIST data. 
Follow the steps below to use the Dockerfile and create image that has an Ipython Notebook code. 

## Requirements to use this Dockerfile:

- [Docker](https://www.docker.com/)

## Instructions to run the app:

- Clone the repository into your local.
      git clone https://github.com/berfubuyukoz/fashion_mnist_task.git
- Make sure you are in the project directory, aka, **fashion_mnist_task**
- In order to build the image run the following command (mind the dot at the end of the command): This will take 1-2 minutes.

      docker build --tag=fmnist .

- Run docker image on port 8888

      docker run -d -v /$(pwd)/:/home/jovyan/work -p 8888:8888 fmnist start-notebook.sh --NotebookApp.token=''  

      
- Open browser, write localhost:8888/?token=<token>

where <token> is the token appeared on terminal.
      
- To train models, run **fashion_mnist_train.ipynb**
- To test models, run **fashion_mnist_test.ipynb**

- **fashion_mnist_train.ipynb** creates 6 different Neural Network models. One is DNN, others are CNN. Each have their own index (Like a catalog). Specify CURRENT_MODEL_IDX to the model you want to train. On default, the CNN model with dropout is trained (CURRENT_MODEL_IDX=2). It is the most successful model among all. (Accuracy: 0.91, Cross Entropy Loss: 0.26)

- You can skip training models and test saved models which are under the **saved models** directory.
**fashion_mnist_test.ipynb** reads a model from file and tests it on the test data. Specify CURRENT_MODEL_IDX to the model you want to test. Code assumes the model file exists. On default, the CNN model with dropout is test. (It is the most successful model among all.)

- There are 3 pretrained models: DNN, CNN without dropout, CNN with dropout. Their CURRENT_MODEL_IDX is 0,1, and 2, respectively. One can see that CNN outperforms DNN, CNN without dropout overfits, and CNN with dropout avoids overfitting. 

- You can set CURRENT_MODEL_IDX to 0, 1 or 2; and test right away in **fashion_mnist_test.ipynb**.
- Output files will be generated under **outfiles** directory. 
- Output files are:

      - Model summary
      - Model scores table (precision recall f1 score) on each 10 class
      - Confusion matrix
      - Model training history plot (training and validation accuracy-loss change)

 
## References
- [Docker](https://www.docker.com/)
- [Fashion-MNIST](https://research.zalando.com/welcome/mission/research-projects/fashion-mnist/)
- [Fashion-MNIST Kaggle challenge](https://www.kaggle.com/zalando-research/fashionmnist)

