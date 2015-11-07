#!/bin/bash

GETMAILDIR="$HOME/.config/getmail"
LOGFILE="$GETMAILDIR/log"
LOGARCHIVE="$GETMAILDIR/log-archive"

MONTH=`date +%Y.%m`

mkdir -p "$LOGARCHIVE"
tar cvzf "$LOGARCHIVE/$MONTH.tar.gz" "$LOGFILE"
rm "$LOGFILE"
touch "$LOGFILE"
