Run AceStrem docker engine
```sh
docker build . -t  amar/acelink
docker run --name acelink --rm -d -p 6878:6878 -p 6888:6888 amar/acelink
```

Health check
```sh
curl "http://127.0.0.1:6878/webui/api/service?method=get_version"
```

The network stream url to open in VLC/other player
```
http://127.0.0.1:6878/ace/getstream?content_id=<content_id>
```

Desktop entry to open magenet links in vlc by default
###
```
xdg-mime default $(pwd)/desktop/acestream.desktop x-scheme-handler/acestream
```