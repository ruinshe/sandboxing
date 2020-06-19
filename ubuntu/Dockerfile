# My own ubuntu environment for daily use
#

FROM ubuntu:bionic

RUN sed -i "s|archive.ubuntu.com|mirrors.163.com|g" /etc/apt/sources.list && \
    sed -i "s|security.ubuntu.com|mirrors.163.com|g" /etc/apt/sources.list  && \
    apt-get update && apt-get install -y apt-utils && \
    apt-get install -y locales zsh && locale-gen en_US.UTF-8 zh_CN.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Time zone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Latex
RUN apt-get install -y texlive-full && apt-get install -y latex-cjk-chinese && \
    rm -rf /var/lib/apt/lists/* /tmp/*

# CTAN
RUN tlmgr option repository https://mirrors.aliyun.com/CTAN/systems/texlive/tlnet

CMD ["/bin/zsh"]
