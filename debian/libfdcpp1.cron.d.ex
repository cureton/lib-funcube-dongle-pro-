#
# Regular cron jobs for the libfdcpp1 package
#
0 4	* * *	root	[ -x /usr/bin/libfdcpp1_maintenance ] && /usr/bin/libfdcpp1_maintenance
