#!/usr/bin/env bash
# fixNames-mac.sh
# Jay Pfaffman <jay@pfaffman.com>

# Replace words in a set of files
# In this file, lines that start with a # (hash) are comments,
# intended to help humans understand how the script works.
# These lines are ignored by the program processing the script.

# Check to see whether the script was given any files to process and
# print an error message if not

if [ $# -lt 1 ]
then
    echo "Usage " $0 files
    echo "   Replaces names (or any words) in files passed on the command line."
    echo "   Edit below to change what names get replaced."
    exit
fi

# The "[[:<:]]" and "[[:>:]]" around "OLDNAME" (below) mark the start
# and end of words, to avoid replacing parts of words. For example, if
# you are replacing "Bill" with "Joe," you do not want to replace
# "Billing" with "Joeing". 

# For each first and last name, duplicate the sed line below to replace in all
# of the documents passed on the command line.

for file in $*
do
    echo -n "Processing " $file ". . . "
    # Stick in as many names like these as you need to
    # OLDNAME will be replaced with NEWNAME in each file passed to this script
    sed --in-place -e 's/[[:<:]]OLDNAME[[:>:]]/NEWNAME/g' $file
    # These next two lines make John Dewey into James Jones
    sed --in-place -e 's/[[:<:]]John[[:>:]]/James/g' $file
    sed --in-place -e 's/[[:<:]]Dewey[[:>:]]/Jones/g' $file
    echo done.
done
exit
