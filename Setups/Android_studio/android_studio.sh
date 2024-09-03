sudo pacman --noconfirm -S android-studio libbsd
#The AUR packages install the SDK in /opt/android-sdk/. This directory has root permissions, so keep in mind to run sdk manager as root. If you intend to use it as a regular user, create the android-sdk users group, add your user.

groupadd android-sdk
gpasswd -a notknown android-sdk

#Set an access control list to let members of the newly created group write into the android-sdk folder. As running sdkmanager can also create new files, set the ACL as default ACL. the X in the default group entry means "allow execution if executable by the owner (or anyone else)"
setfacl -R -m g:android-sdk:rwx /opt/android-sdk
setfacl -d -m g:android-sdk:rwX /opt/android-sdk

#newgrp android-sdk
newgrp android-sdk