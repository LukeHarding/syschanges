#!/bin/bash
logdir="/etc/syschanges"
wherebe="$(pwd)"
log="$logdir/current"
loglocation="$log" # Intentionally left asinine
if [ -d $logdir ]; then
	echo "Already installed, yo. Chill out"
	exit
fi

if [ "$(whoami)" != 'root' ]; then
	echo "etc is not writeable by non-root accounts, exiting :( "
	exit 1;
fi

echo "Creating directory for logs"
mkdir $logdir
sleep 2 # hahahahhahahahaha

echo "adding syschanges to bin"
cp $wherebe/syschanges /bin/
chmod a+x /bin/syschanges

echo "Generateing your current configuration."
syschanges > $logdir/current

echo "lspci:

" > $loglocation
lspci >> $loglocation
echo "lsblk:

" >> $loglocation
lsblk >> $loglocation
echo "lscpu:

" >> $loglocation
lscpu >> $loglocation
echo "lsinitramfs:

" >> $loglocation
lsinitramfs /boot/initrd.img-$(uname --kernel-release) >> $loglocation

echo "done."
