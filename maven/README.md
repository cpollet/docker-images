```
$ docker build --rm --build-arg USER=$(id -u) --build-arg GROUP=$(id -g) -t cpollet/maven .
$ docker run -it --rm --user $(id -u):$(id -g) -v /path/to/sources:/build/sources -v ~/.m2:/build/.m2 cpollet/maven mvn clean install
```
