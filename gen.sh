#!/bin/bash

sudo chown root:root include/**/*

sudo ./build-x86-images.sh -a x86_64 -- \
  -r current/ \
  -o "hadis-void-x86_64-$(date -u +%Y%m%d).iso" \
  -c '/home/hadi/.local/share/pkgs/void-mklive/xbps-cachedir-x86_64' \
  -I 'include' \
  -T 'Hadis Void' \
  -p 'void-repo-nonfree 
      dbus
      elogind
      polkit
      pipewire
      alsa-pipewire
      bluez
      libspa-bluetooth
      vim
      tlp
      git
      bspwm
      sxhkd
      neofetch
      qemu
      xorg-minimal
      xorg-input-drivers
      xorg-video-drivers
      xrandr
      lightdm
      lightdm-gtk3-greeter
      rofi
      octoxbps
      emacs-gtk3
      firefox
      libreoffice-calc
      libreoffice-common
      libreoffice-draw
      libreoffice-impress
      libreoffice-writer
      libreoffice-math
      libreoffice-gnome
      libreoffice-xtensions
      libreoffice-i18n-en-US
      libreoffice-i18n-ar
      noto-fonts-ttf
      noto-fonts-ttf-extra
      noto-fonts-emoji' \
  -S 'dbus elogind tlp'
