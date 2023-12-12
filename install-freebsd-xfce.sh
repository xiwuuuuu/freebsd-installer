sh update-freebsd.sh
pkg install xorg lightdm lightdm-gtk-greeter xfce wqy-fonts xdg-user-dirs drm-kmod nvidia-hybrid-graphics-390  net-mgmt/networkmgr sudo nano vim firefox wine  sysutils/fusefs-ntfs gcc gammy
sysrc kld_list+="fusefs"
sysrc dbus_enable="YES"
echo "/usr/local/etc/xdg/xfce4/xinitrc" > ~/.xinitrc
sysrc lightdm_enable="YES"
lightdm_env="LC_MESSAGES=zh_CN.UTF-8"
sysrc -f /boot/loader.conf  acpi_video="YES"
sysrc -f /boot/loader.conf  acpi_ibm_load="YES"
sysrc -f /boot/loader.conf  acpi_video="YES"
sysrc kld_list+=nvidia-modeset
sysrc nvidia_xorg_enable=YES
sysrc linux_enable="YES"
sysrc kld_list+="linux linux64"
kldload linux64
service linux start
pkg install emulators/linux-c7 dbus
dbus-uuidgen > /compat/linux/etc/machine-id
pkg install -y debootstrap
debootstrap jammy /compat/ubuntu http://mirrors.ustc.edu.cn/ubuntu/
mkdir /compat/ubuntu/home
pkg install -y linux-steam-utils
echo boot_mute="YES"  >> /boot/loader.conf
echo debug.acpi.disabled="thermal" >> /boot/loader.conf
sysrc rc_startmsgs="NO"
sysrc dhclient_flags="-q"
sysrc background_dhclient="YES" 
sysrc synchronous_dhclient="YES"
sysrc defaultroute_delay="0"
sysrc defaultroute_carrier_delay="1"
 pkg install -y cups
sysrc cupsd_enable="YES"
pkg install -y hplip
