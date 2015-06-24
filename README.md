# Cloud9 on Docker

## Installation

A docker-compose.yml in this repo is tested on Ubuntu 14.04 only for now. Modify this file appropriately.

```yaml
cloud9:
  build: .
  ports:
    - 8080:80
    - 15454:15454
    - 3000:3000
    - 4000:4000
  volumes:
    - ./workspace:/workspace
  command: node /cloud9/server.js --port 80 -w /workspace --auth user:password
```

And up a service.

```sh
$ docker-compose up
```

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[Masato Shimizu](https://github.com/masato)
