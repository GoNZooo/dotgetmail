GETMAILDIR="$HOME/.config/getmail"
RCDIR="$GETMAILDIR/rc-files"
LOGFILE="$GETMAILDIR/log"
RCACCUMULATOR=""

for rcfile in `find "$RCDIR" -name "*.rc"`; do
    RCACCUMULATOR="$RCACCUMULATOR --rcfile $rcfile"
done

date >> "$LOGFILE"
getmail $RCACCUMULATOR | $GETMAILDIR/with-tabs.sh >> "$LOGFILE"
