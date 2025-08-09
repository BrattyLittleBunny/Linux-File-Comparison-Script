# !/bin/bash

# This is getting all files, in a list, with their sizes, and going into each directory
ls -alfsR [INPUT THE ROOT LOCATION THAT YOU WANT TO START AT (EX: /HOME/)] > [INPUT WHERE YOU WANT THE NEW SCANN FILE TO BE]

# the comparison. if this is your first scan, just create an empty file for the "old scan".
# -q is to just output changes (with this script there will always be changes because i change the "old scan" and delete the new one
diff -q [INPUT LOCATION OF LAST SCAN FILE] [LOCATION OF NEW SCAN] > [LOCATION OF WHERE YOU WANT THE DIFFERENCE FILE TO BE]

# replacing the old scan with the new one because i don't really care about keeping an archive of files on my computer
cp -f [NEW SCAN] [OLD SCAN]

# again, deleting the new one since it's now the last scan. 
rm -f [NEW SCAN]

# setting permissions
chmod 744 [DIFFERENCE FILE]

# opening the file cause if i run this i want to see the difference :3
[DIFFERNCE FILE]
