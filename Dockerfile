FROM okwrtdsh/anaconda3:10.0-cudnn7

# tensorflow install
RUN conda install -y --quiet \
    'tensorflow-gpu=1.12.0'

# AI Gym requirements
RUN apt-get update
RUN apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev
RUN pip install --upgrade pip
RUN pip install msgpack gym
RUN conda install -y --quiet -c conda-forge pyopengl pyglet jsanimation ipywidgets tqdm
