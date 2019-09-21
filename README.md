build:

```
docker build -t isar:2019.9.0 .
```

run:

```
docker run -ti --rm -v "isar path":/home/deve/project/ -e USER_ID=$(id -u) --cap-add=SYS_ADMIN --cap-add=MKNOD --privileged isar:2019.9.0 /bin/bash
```
