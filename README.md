# ml-cop
이미지: https://github.com/okwrtdsh/anaconda3

0. Install Docker
- Download pkg from https://docs.docker.com/docker-for-mac/install/
- Install it

1. clone from github
```bash
git clone https://github.com/okwrtdsh/anaconda3
```
2. create docker-compose.yml
```
vi docker-compose.yml
```
3. set base image in docker-compose.yml
```yaml
# tf-cpu
version: '3'
services:
  jupyter:
    image: okwrtdsh/anaconda3:tf-cpu
    ports:
      - '8888:8888'
    volumes:
      - ./notebooks:/src/notebooks
```

4. build using docker-compose
```bash
docker-compose up -d
```

5. check jupyter is running
- http://localhost:8888

6. run basic python code
- new > python3
- write code below
```python
#In[1]
from sklearn import linear_model

reg = linear_model.LinearRegression()
reg.fit([[0, 0], [1, 1], [2, 2]], [0, 1, 2])
reg.coef_
```
- click Run 
```python
#Out[2]
array([0.5, 0.5])
```
