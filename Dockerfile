FROM okwrtdsh/anaconda3:tf-cpu

# AI Gym requirements
RUN apt-get update
RUN apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev graphviz
RUN pip install --upgrade pip
RUN pip install --upgrade keras
RUN pip install msgpack gym pydot
RUN conda install -y --quiet -c conda-forge pyopengl pyglet jsanimation ipywidgets tqdm
