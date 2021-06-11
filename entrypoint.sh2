#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; 
mv public_html/abpl_current public_html/abpl_old; 
mv public_html/abpl_load public_html/abpl_current; 
rm -r public_html/abpl_old;
quit"
