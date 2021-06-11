#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false;
mkdir public_html/abpl_load;
mirror $INPUT_OPTIONS --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; 
mv public_html/abpl public_html/abpl_old; 
mv public_html/abpl_load public_html/abpl; 
rm -r public_html/abpl_old;
quit"

# mv public_html/abpl_old public_html/abpl_load; 