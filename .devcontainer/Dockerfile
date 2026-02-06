FROM dcsunset/i3-arch-vnc:latest

# Create the dev user BEFORE Codespaces connects
RUN useradd -m -s /bin/bash arch 
&& echo "arch ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ENV USERNAME=arch

ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd -g $USER_GID arch \
 && useradd -m -u $USER_UID -g $USER_GID -s /bin/bash arch \
 && echo "arch ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
