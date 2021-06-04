FROM mirrors.tencent.com/star_library/g-tlinux2.2-python3.6-cuda10.1-cudnn7.6:latest

COPY Anaconda3-2021.05-Linux-x86_64.sh /root/

RUN bash /root/Anaconda3-2021.05-Linux-x86_64.sh && \
    conda create -n CKC python=3.8 && \
    conda activate CKC && \
    pip install torch==1.8.1