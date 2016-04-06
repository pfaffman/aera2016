# How to Run fixNames

Download this repository or just the fixNames shell script.

## Windows users 

1. Install Git (https://git-scm.com/downloads)  
2. Open fixNames with an editor (like Notepad) to edit the names from your files + chosen pseudonyms

    sed --in-place -e 's/\<OLDNAME\>/NEWNAME/g' $file

In fixNames, for each name you want to replace, create a “sed” line like the one above. 
OLDNAME = the original name, NEWNAME = the pseudonym. You can copy and paste this line as many times as you need. 
Here is an example:

    sed --in-place -e 's/\<John\>/James/g' $file
    sed --in-place -e 's/\<Dewey\>/Jones/g' $file

3. Put your data files (`.html` or `.txt` files) in the same folder where you saved the fixNames file

4. Right click on the folder where your data files and fixName are saved. Select Open with Git Bash

5. In the Git bash window, type:

    ./fixNames *.html

or

    ./fixNames *.txt

## Mac users

1. Open `fixNames-mac.sh` with an editor (like [TextWrangler](http://www.barebones.com/products/textwrangler/), [Brackets](http://brackets.io/), [Sublime Text](http://www.sublimetext.com/), or [Atom](https://atom.io/)) to edit the names from your files + chosen pseudonyms

    sed --in-place -e 's/[[:<:]]OLDNAME[[:>:]]/NEWNAME/g' $file

In fixNames, for each name you want to replace, create a “sed” line like the one above. 
OLDNAME = the original name, NEWNAME = the pseudonym. You can copy and paste this line as many times as you need. 
Here is an example:

    sed --in-place -e 's/[[:<:]]John[[:>:]]/James/g' $file
    sed --in-place -e 's/[[:<:]]Dewey[[:>:]]/Jones/g' $file

3. Put your data files (`.html` or `.txt` files) in the same folder where you saved the fixNames file. 

5. Open Terminal (you have an app called Terminal installed, even if you don't know it) 

5. Before running `fixNames-mac.sh` you need to change to the directory where it is stored. If you kept the name of this repository and put your files there, the `cd` command below should work. If it is in a different folder (aka directory), adjust the `cd` command accordingly.

    cd documenting-the-undocumented-trail
    ./fixNames *.html


