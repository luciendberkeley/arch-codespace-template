FROM dcsunset/i3-arch-vnc:latest

ARG USERNAME=arch
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --GID $USER_GID $USERNAME
RUN useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
RUN pacman -Sy --noconfirm --needed sudo
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME
RUN chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
