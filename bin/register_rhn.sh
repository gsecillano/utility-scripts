#!/bin/bash

cp -p /etc/sysconfig/rhn/up2date /etc/sysconfig/rhn/up2date.orig
cp -p /etc/sysconfig/rhn/systemid /etc/sysconfig/rhn/systemid.orig
wget --no-proxy --no-check-certificate https://rhnproxy.wdf.sap.corp/pub/up2date -O /etc/sysconfig/rhn/up2date
wget --no-proxy --no-check-certificate https://rhnproxy.wdf.sap.corp/pub/rhn-org-trusted-ssl-cert.noarch.rpm -O /tmp/rhn-org-trusted-ssl-cert.noarch.rpm
rpm -Uvh --force /tmp/rhn-org-trusted-ssl-cert.noarch.rpm
rhnreg_ks --activationkey "1-rhel5-x86_64-key" --serverUrl "https://rhnproxy.wdf.sap.corp/XMLRPC"
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-beta
