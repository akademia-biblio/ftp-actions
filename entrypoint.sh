#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; rmdir [-r] public_html/abpl3; mv public_html/abpl1 public_html/abpl2; quit"
