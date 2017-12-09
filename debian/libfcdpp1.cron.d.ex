#
# Regular cron jobs for the libfcdpp1 package
#
0 4	* * *	root	[ -x /usr/bin/libfcdpp1_maintenance ] && /usr/bin/libfcdpp1_maintenance
