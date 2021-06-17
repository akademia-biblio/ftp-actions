#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false;
mirror $INPUT_OPTIONS --reverse --continue --only-newer --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; 
mv public_html/abpl/_app public_html/abpl/_app_old; 
mv public_html/abpl_load public_html/abpl/_app;
mv public_html/abpl/_app_old public_html/abpl/abpl_load; 
quit"

# rm -r public_html/abpl_old;
# mkdir public_html/abpl_load;
# mv public_html/abpl public_html/abpl_old; 
