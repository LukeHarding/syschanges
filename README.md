# syschanges
A utility for detecting physical changes in a system


This is a utility for paranoid sys admins who want to make sure that there are no hw / critical system changes to their remote servers. This script creates a log in /etc/syschanges using the common ls* utilities in sane distros of Linux. Then it creates a new log to comapre the changes


To install: (sudo) bash install.sh

To use:     (sudo) syschanges

If you think I should screw off then execute (sudo) bash uninstall.sh

TODO:

1. Adding encryption / secure signing so that an attacker on the system 
2. Add immutibility factor to the file (almost a moot point)
3. Add the ability to update the current log
4. ???
5. Profit
