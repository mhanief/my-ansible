# Install Apache
yum intall --quite -y httpd httpd-devel
# copy configuration files
cp httpd.conf /etc/httpd/conf/httpd.conf
cp httpd-vhosts /etc/httpd/conf/httpd-vhosts.conf
# Start Apache and configure it to run at boot
service httpd start
chkconfig httpd on
