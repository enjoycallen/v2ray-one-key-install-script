rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh https://www.elrepo.org/elrepo-release-8.0-2.el8.elrepo.noarch.rpm

yum --disablerepo="*" --enablerepo="elrepo-kernel" list available

yum -y --enablerepo=elrepo-kernel install kernel-ml kernel-ml-devel

dnf install grubby
grubby --default-kernel

grubby --info=ALL

rpm -qa | grep kernel
yum -y rm kernel-headers-4.18.0-305.3.1.el8.x86_64 rm kernel-4.18.0-305.3.1.el8.x86_64
yum -y rm kernel-tools-4.18.0-305.3.1.el8.x86_64 rm kernel-devel-4.18.0-305.3.1.el8.x86_64
yum -y rm kernel-core-4.18.0-305.3.1.el8.x86_64 rm kernel-modules-4.18.0-305.3.1.el8.x86_64
rpm -qa | grep kernel
