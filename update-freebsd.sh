mkdir -p /usr/local/etc/pkg/repos
 sed -i '' 's/quarterly/latest/g' /etc/pkg/FreeBSD.conf
 cp -r utsc.conf  /usr/local/etc/pkg/repos
 pkg update - f
