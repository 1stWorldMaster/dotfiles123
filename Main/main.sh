sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings
sudo pacman -S --noconfirm ttf-firacode-nerd ttf-jetbrains-mono-nerd

cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S --noconfirm --answerdiff=None --answerclean=None waybar auto-cpufreq microsoft-edge-stable

cd /home/notknown/dotfiles123/Setups



./Setups/python_env/load.sh
./Setups/vs_code/vscode.sh
./Setups/codefiles/forenv.sh
./Ardrino_ide/download.sh
./Setups/Android_studio/flutter.sh
./Setups/Android_studio/android_studio.sh

flutter doctor