# ml-cop
docker repo: https://github.com/okwrtdsh/anaconda3
study repo: https://github.com/AndersonJo/machine-learning

## Environment

### Install Docker
- Download pkg from https://docs.docker.com/docker-for-mac/install/
- Install it

### clone from github
```bash
git clone https://github.com/yoonkwon/ml-cop
```

### build docker image
```
docker build --rm -t ml-cop:latest .
```

### run using docker-compose
```bash
docker-compose up -d
```

### check jupyter is running
- http://localhost:8888

### run basic python code
- new > python3
- write code below
```python
#In[1]
from sklearn import linear_model

reg = linear_model.LinearRegression()
reg.fit([[0, 0], [1, 1], [2, 2]], [0, 1, 2])
reg.coef_
```
- click Run button and check the output 
```python
#Out[2]
array([0.5, 0.5])
```

### stop docker
```
docker-compose down
```

## In case installing addtional packages
```
docker exec -ti ml-cop_jupyter_1 /bin/bash
$ pip install some_package_name
```
