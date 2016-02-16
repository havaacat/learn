#!/bin/bash
clear
if [[ $# -eq 0 ]]; then
    reset_terminal=$(tput_sgr0)
    # Check OS Type
        os=$(uname -o)
        echo -e '\E[32m' "Operating System Type :" $reset_terminal $os
    # Check OS Release Version and Name
        os_name=$(cat /etc/issue | grep -e "CentOS")
        echo -e '\E[32m' "OS Release Version and Name :" $reset_terminal $os_name
    # Check Architecture
        architecture=$(uname -m)
        echo -e '\E[32m' "Check Architecture :" $reset_terminal $architecture
    # Check Kernel Release
        Kernerrelease=$(uname -r)
        echo -e '\E[32m' "Kernel Release :" $reset_terminal $kernerrelease
    # Check hostname echo $HOSTNAME
        hostname=$(uname -n)
        echo -e '\E[32m' "hostname :" $reset_terminal $hostname
    # Check Internal IP
        internalip=$(hostname -I)
        echo -e '\E[32m' "Internal IP :" $reset_terminal $internalip
    # Check External IP
        externalip=$(curl -s http://ipecho.net/plain)
        echo -e '\E[32m' "external IP :" $reset_terminal $externalip
    # Check DNS
        nameservers=$(cat /etc/resolv.conf | grep -E "nameserver" | awk '{print $NF}')        
        echo -e '\E[32m' "nameservers" $reset_terminal $nameservers
    # Check if connected to Interner or not
        ping -c 2 imooc.com &>/dev/null && echo "Interner:Connected" || echo "Internet:Disconnected"
    # Check Logged In Users
        who>/tmp/who
        echo -e '\E[32m' "Logged In Users" $reset_terminal && cat /tmp/who
    rm -f /tmp/who
fi

