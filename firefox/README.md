```
$ docker build -t cpollet/firefox .
$ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
$ docker run -ti --rm -e DISPLAY=${localIPAddress}:0 cpollet/firefox
```
