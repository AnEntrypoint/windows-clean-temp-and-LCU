# windows-clean-temp-and-LCU
This utility uses NSIS to clean up windows temporary directories as well as last-cumulative-updates, runs disk cleanup when done.

# WHY?
Microsoft now deliberately leaves 120,000 log files per update on your system drive, dating back up to three updates, these 320,000 extra files are enough to make the file lookup table so slow that your computer feels a generation or two older, making firstly hard drives unusable, and secondly SSD based machines crawl at near-hdd lookup times.

Disk cleanup does remove the last two, but it always leaves one, which is the nail in the coffin for HDD machines.

Fix this now, just run this every now and then, it will delete temp files and clean up the updates, then run windows disk cleanup to check what else windows left behind, when its done, your system will be markably faster.
