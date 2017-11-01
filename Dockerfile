#################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM conda/miniconda2

MAINTAINER cheng gong <512543469@qq.com>

RUN conda config --add channels bioconda &&\
    conda config --add channels r &&\
    conda config --add channels conda-forge &&\
    conda config --add channels defaults &&\
    conda update --all -y &&\
    conda inconda install -y meme
    #conda inconda install -y -c bioconda meme

CMD ["/bin/bash"]


