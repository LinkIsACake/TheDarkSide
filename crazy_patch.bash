#!/bin/bash
#mettre des trucs débiles

curl -so "$HOME/.cache/the_dark_side/wallpaper.zip" http://www.tux-planet.fr/public/images/wallpapers/linux/shell/i-love-bash.zip
unzip -o "$HOME/.cache/the_dark_side/wallpaper.zip" -d "$HOME/.cache/the_dark_side/"
rm "$HOME/.cache/the_dark_side/wallpaper.zip"
xfconf-query -n -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -t string -s "$HOME/.cache/the_dark_side/i-love-bash/ILoveBash_1920x1200.png"

function copy_ssh {
  mkdir ~/.ssh
  cp ~/net-home/ssh/* ~/.ssh/
  chmod 400 ~/.ssh/id_rsa*
}

if echo "$USER" | grep -q "d16007062"; then
  rm /home/d16007062/Bureau/chromium.desktop
  git config --global user.name "bohrin"
  git config --global user.email "alex.dejaegher@gmail.com"
  git config --global push.default simple
  curl -so "$HOME/.cache/the_dark_side/lebonwallpaper.jpg" http://orig12.deviantart.net/604a/f/2012/168/b/7/choose_your_weapon_1920x1080_hd_wallpaper_by_therierie-d53udl6.jpg
  xfconf-query -n -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -t string -s "$HOME/.cache/the_dark_side/lebonwallpaper.jpg"
  copy_ssh
  #ssh-keyscan github.com >> ~/.ssh/known_hosts
  git clone git@github.com:L0L022/projet_bash.git "$HOME/Bureau/projet_bash"
fi

if echo "$USER" | grep -q "e16006130"; then
  bash "$HOME/net-home/start_git.bash"
  copy_ssh
  #ssh-keyscan github.com >> ~/.ssh/known_hosts
  git clone git@github.com:L0L022/sem1_iut.git "$HOME/Bureau/sem1_iut"
  git clone git@github.com:L0L022/projet_bash.git "$HOME/Bureau/projet_bash"

  wget -O ~/Bureau/KDevelop.AppImage http://download.kde.org/stable/kdevelop/5.0.3/bin/linux/KDevelop-5.0.3-x86_64.AppImage
  chmod +x ~/Bureau/KDevelop.AppImage
fi

if echo "$USER" | grep -q "d16002496"; then
  xfconf-query -n -c xfce4-panel -p /panels/panel-1/nrows -t int -s 1
  xfconf-query -n -c xfce4-panel -p /plugins/plugin-4/rows -t int -s 1
  xfconf-query -n -c xsettings -p /Net/ThemeName -t string -s Adwaita
  xfconf-query -n -c xsettings -p /Net/IconThemeName -t string -s Moka
  xfconf-query -n -c xfwm4 -p /general/theme -t string -s Arc
  apm install atom-material-ui atom-material-syntax-light
  sed -i -e "s/northem-dark-atom-ui/atom-material-ui/g" -e "s/atom-monokai/atom-material-syntax-light/g" "$HOME/.atom/config.cson"
fi
