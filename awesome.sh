yay -Sy picom-git alacritty rofi todo-bin acpi acpid acpi_call upower \
jq inotify-tools polkit-gnome xdotool xclip gpick ffmpeg blueman \
pipewire pipewire-alsa pipewire-pulse pamixer brightnessctl scrot redshift \
feh mpv mpd mpc mpdris2 ncmpcpp playerctl --needed 
systemctl --user enable mpd.service
systemctl --user start mpd.service
git clone --recurse-submodules https://github.com/rxyhn/dotfiles.git
git clone --recurse-submodules https://github.com/rxyhn/dotfiles.git
cd dotfiles && git submodule update --remote --merge
cp -r config/* ~/.config/
cp -r misc/fonts/* ~/.fonts/
# or to ~/.local/share/fonts
cp -r misc/fonts/* ~/.local/share/fonts/
fc-cache -v
cp -rf misc/themes/* ~/.themes/
# or to /usr/share/themes
sudo cp -rf misc/themes/* /usr/share/themes/
