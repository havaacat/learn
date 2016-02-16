#!/bin/bash

apache=$(ps aux | grep httpd | grep -v grep)
if [ -n "$apache" ]; then
    echo "$(date) is ok!" >> /tmp/apache/autostart-acc.log
else
    /etc/rc/init.d/httpd start &> /dev/null
    echo "$(date) restart httpd !!" >> /tmp/apache/autostart-err.log
fi
