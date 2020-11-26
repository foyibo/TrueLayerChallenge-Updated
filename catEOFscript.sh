#!/usr/bin/env bash

# Example of CAT<<EOF cat 'here document', using command-line argument
# and parameter substitution.

# Can be executed with no command-line arguments,   ./catEOFscript
# Try executing with one command-line argument,   ./catEOFscript John
# Try executing with quoted command-line argument, ./catEOFscript "Mike James"

CMDLINEARG=1     #Expecting at least command-line argument.

if [ $# -ge $CMDLINEARG ]
then
  NAME=$1       #If more than one command-line argument,then just take the first.
                   
  DISPLAYMESSAGE="Once again thank you $NAME"
  
else
  NAME="Hiring Manager"   #Default, if no command-line argument supplied.
  DISPLAYMESSAGE="Note that you can supply your name as an argument to this script"
fi  

AUTHUR="Frank Oyibo"  
CONTACT="Ollie"  

#'~/' ensures that the outputfile is created in the user's home directory 
#and preserves hierarchy

cat > ~/outputfile.txt <<EOF
Hi $NAME, 

Thank you for taking the time to run this script.

I hope this is along the line of what you're looking for?
Please do let me know, as I can always do something different.

Thank you $NAME, and extend my regards to $CONTACT.

with kind regards,

$AUTHUR.

***$DISPLAYMESSAGE***

EOF