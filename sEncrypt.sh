#!/bin/bash 
 
 
OUTPUT_NAME=Documents_WjitL$(date '+%FT%T')
OUTPUT_GPG=/mnt/Backups/${OUTPUT_NAME}.tar.gpg
INPUT_FILE=DocumentsWjitL

time gpg-zip --encrypt --output ${OUTPUT_GPG} -r me@akjems.com --tar-args "-C /home/adam/" ${INPUT_FILE}

