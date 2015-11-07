#!/bin/bash

GETMAILDIR="$HOME/.config/getmail"
LOGFILE="log"
LOGARCHIVE="$GETMAILDIR/log-archive"
MONTH=`date +%Y.%m`
ARCHIVEPATH="$LOGARCHIVE/$MONTH.tar.gz"

mkdir -p "$LOGARCHIVE"
tar -C"$GETMAILDIR" -cvzf "$ARCHIVEPATH" "$LOGFILE"
rm "$LOGFILE"
touch "$LOGFILE"
