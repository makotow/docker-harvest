# Sphinx Docker

*Read this in other languages: [日本語](README.ja.md)

## What is this?

Dockerized NetApp Harvest

## Requirements

- Installed docker.
- Installed make.
- Installed docker-compose if you use including docker-compose file.

## Current features

The following features supported via make 

- Docker build and push 
- Docker up 
- Docker-compose up

## How to use?


### Build

Build 

```
$ make build-harvest-image
```

### Image Push

```Examples
$ make push-image
```

### Run containerized harvest

```Examples
$ make up
```


## Authors

- [@makotow](https://github.com/makotow)

## License

MIT
