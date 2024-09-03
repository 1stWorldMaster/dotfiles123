wget https://drive.google.com/drive/folders/1KgjpvzQnM-xm-vJcw707v4gGdeb4Wr5C?usp=sharing
cp arduino-ide_2.2.1_Linux_64bit /home/notknown/codefiles

sudo gpasswd -a $USER uucp
sudo gpasswd -a $USER lock
sudo gpasswd -a $USER tty

yay --noconfirm -S rxtx
chown root:lock /run/lock
chmod g+w /run/lock