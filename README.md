# iasc-siege-alpine

Docker image for SIege on Alpine

## How to build it locally

```bash
docker build . -t iasc-siege-alpine
```

### Usage
To show valid parameters/help:
```
docker run --rm iasc-siege-alpine
```
#### 1. Run siege on a single url:
```
# Run for 10s simulating 100 concurrent users
docker run --rm iasc-siege-alpine -t10s -c100 https://arquitecturas-concurrentes.github.io/
```

#### 2. Randomly hit urls from a list
```
# Run for 10s simulating 100 concurrent users, using example list specified in the Dockerfile
docker run --rm iasc-siege-alpine -t10s -c100 -i -f urls.txt
```
