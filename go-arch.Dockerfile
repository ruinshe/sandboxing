FROM archlinux

RUN echo 'Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist && \
    pacman -Syu go make git --noconfirm

ARG MAJOR_USER=ruinshe

RUN useradd -m -G users $MAJOR_USER

USER $MAJOR_USER
WORKDIR /home/$MAJOR_USER

