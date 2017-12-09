#
# Regular cron jobs for the libfcdpp package
#
0 4	* * *	root	[ -x /usr/bin/libfcdpp_maintenance ] && /usr/bin/libfcdpp_maintenance
