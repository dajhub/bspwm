#!/bin/bash
set -e

# ---

echo "###############################################"
echo "# Creating private folders for later use"
echo "###############################################"

set -e

[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/.config/bspwm" ] || mkdir -p $HOME"/.config/bspwm"
[ -d $HOME"/.config/dmenu" ] || mkdir -p $HOME"/.config/dmenu"
[ -d $HOME"/.local/share/fonts" ] || mkdir -p $HOME"/.local/share/fonts"
[ -d $HOME"/.config/kitty" ] || mkdir -p $HOME"/.config/kitty"
[ -d $HOME"/.config/geany" ] || mkdir -p $HOME"/.config/geany"
[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
[ -d $HOME"/.config/polybar" ] || mkdir -p $HOME"/.config/polybar"

echo "###############################################"
echo "# Personal folders created or existed already"
echo "###############################################"

# ---

echo "###############################################"
echo "# Copy fonts to .local/share/fonts/"
echo "###############################################"

cp -R ~/bspwm/fonts/* ~/.local/share/fonts/

fc-cache -fv ~/.fonts

echo "############################################"
echo "# Fonts have been copied and refreshed       "
echo "############################################"

# ---


echo "############################################"
echo "# Copying files/folders i.e. gtk.css, kitty, geany, rofi, terminalrc"
echo "############################################"

cp -R ~/bspwm/kitty/* ~/.config/kitty/
cp -R ~/bspwm/rofi/* ~/.config/rofi/
cp -R -f ~/bspwm/geany/* ~/.config/geany/
cp -R ~/bspwm/dmenu/* ~/.config/dmenu/
cp ~/bspwm/picom ~/.config/

echo "############################################"
echo "# Files/folders copied"
echo "############################################"

# ---


echo "############################################"
echo "############################################"
echo "FINISHED..."
echo "############################################"
echo "############################################"