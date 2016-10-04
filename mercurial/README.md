A docker image that contains mercurial 2.8.2 (latest version for ubuntu 14.04)

```
$ docker build --rm -t cpollet/mercurial .
$ docker run -it -v /path/to/extension:/usr/local/mercurial-ext cpollet/mercurial /bin/bash
```
