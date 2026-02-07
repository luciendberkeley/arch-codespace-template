FROM archlinux:base

RUN pacman -Sy --noconfirm archlinux-keyring
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm \
    i3status \
    i3-wm \
    git \
    net-tools \
    python3 \
    rxvt-unicode \
    supervisor \
    ttf-dejavu \
    x11vnc \
    xorg-server \
    xorg-apps \
    xorg-server-xvfb \
    xorg-xinit

RUN useradd -m -G wheel arch && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# noVNC setup
WORKDIR /usr/share/
RUN git clone https://github.com/kanaka/noVNC.git
WORKDIR /usr/share/noVNC/utils/
RUN git clone https://github.com/kanaka/websockify

ENV DISPLAY=:0

COPY supervisord.conf /etc/

RUN mkdir -p /home/arch/.config/i3 && \
    cp /etc/i3/config /home/arch/.config/i3/config && \
    chown -R arch:arch /home/arch

EXPOSE 6080

WORKDIR /home/arch

CMD ["/usr/bin/supervisord"]

