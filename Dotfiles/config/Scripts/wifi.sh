nmcli dev status
nmcli radio wifi on
nmcli dev wifi list
echo "Write the wifi name"
read wifi_name
echo "write the wifi password"
read wifi_pass
sudo nmcli dev wifi connect "$wifi_name" password "$wifi_pass"
