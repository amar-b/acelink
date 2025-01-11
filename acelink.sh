#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'No acestream link provided'
    exit 1
else
    link=$1
    contentId=${link#acestream://}
    echo $contentId
    vlc http://127.0.0.1:6878/ace/getstream?content_id=$contentId
fi

# http://127.0.0.1:6878/ace/getstream?content_id=fc5089d8e1519872fdf951779ccbca913acc9bce