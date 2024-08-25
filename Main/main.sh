DIR="$(dirname "$(realpath "$0")")"

cd "$DIR"
chmod +x configedit.sh
chmod +x homeconfigedit.sh
chmod +x vscode.sh

cd "$(dirname "$0")"
./configedit.sh
cd "$(dirname "$0")"
./homeconfigedit.sh
cd "$(dirname "$0")"
./vscode.sh

sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings
sudo pacman -S --noconfirm ttf-firacode-nerd ttf-jetbrains-mono-nerd

cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S --noconfirm --answerdiff=None --answerclean=None waybar auto-cpufreq microsoft-edge-stable