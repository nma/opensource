#bin/bash

sudo cat > redmine.ini <<EOF
base_user=admin
base_password=redminepwd
redmine_language=en
smtp_email_provider=custom
smtp_enable=1
smtp_user=myemail@mydomain.com
smtp_password=mySMTPPassword
smtp_host=smtp.domain.com
smtp_port=587
smtp_protocol=tls
EOF

INSTALLER=bitnami-redmine

wget -O $INSTALLER "https://bitnami.com/redirect/to/39065/bitnami-redmine-2.5.2-1-linux-x64-installer.run" > /dev/null

echo "[INFO] Done installing bitnami-redmine installer"
chmod a+x $INSTALLER
./$INSTALLER --mode unattended --optionfile redmine.ini
