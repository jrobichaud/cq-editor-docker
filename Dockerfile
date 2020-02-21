FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y libgl1-mesa-glx libxi6
RUN conda install -c conda-forge -c cadquery cadquery=2 cq-editor
ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb
CMD ["/opt/conda/bin/cq-editor"]
