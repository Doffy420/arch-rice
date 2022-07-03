sudo pacman -S openbox
sudo pacman -S alsa-utils pulseaudio pulseaudio-alsa
yay -S brightnessctl
yay -S psuinfo
sudo pacman -S wireless_tools
yay -S dunst tint2 gsimplecal rofi feh lxappearance qt5ct qt5-styleplugins lxsession xautolock rxvt-unicode-truecolor-wide-glyphs xclip scrot thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman lxsession tumbler jq w3m geany nano vim viewnior pavucontrol parcellite neofetch htop picom-git gtk2-perl xfce4-power-manager imagemagick playerctl networkmanager-dmenu xsettingsd
git clone https://github.com/ilham25/dotfiles-openbox
pushd dotfiles-openbox/ && \
  bash -c 'cp -v -r {.*,*} ~/' && \
popd
rm ~/README.md && rm ~/LICENSE && rm -rf ~/.git
cd ~/.icons/

tar -Jxvf oomox-aesthetic-light.tar.xz && tar -Jxvf oomox-aesthetic-dark.tar.xz

sudo cp -r {oomox-aesthetic-light,oomox-aesthetic-dark} /usr/share/icons/

rm -r ~/.icons/{oomox-aesthetic-light,oomox-aesthetic-dark,*.tar.xz} 
fc-cache -rv
sudo gpasswd -a $USER video
