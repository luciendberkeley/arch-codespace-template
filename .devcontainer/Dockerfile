FROM dcsunset/i3-arch-vnc:latest

ARG USERNAME=arch
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN pacman -S --noconfirm --needed sudo
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME
RUN chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
