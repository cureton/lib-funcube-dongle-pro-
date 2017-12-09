#
# Regular cron jobs for the libfdcpp package
#
0 4	* * *	root	[ -x /usr/bin/libfdcpp_maintenance ] && /usr/bin/libfdcpp_maintenance
