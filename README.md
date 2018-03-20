# Docker create-react-app template

## Overview

This is just a plainly generated `create-react-app` template with a `Dockerfile` and a `run.sh`. Nothing else. No bells and whistles or anything.

**Credit to [Peter Bengtsson's article](https://www.peterbe.com/plog/how-to-create-react-app-with-docker) for help in building this**

## Requirements

* This was built using Docker version `17.12.0-ce` (the current Docker version as of the creating of this repo), so that would be the safest bet, but it may be backwards compatible to a degree. I never tested it.


## Getting Started

```bash
git clone https://github.com/johnazre/docker-create-react-app.git
docker build . -t react:app # react:app can be anything, i.e. blah:latest. Just make sure you change it everywhere else, as well.

# To only run the container without updating docker container
docker container run -it -p 3000:3000 react:app

# OR

# To run the container with updating the docker container and automatic browser refresh on save.
docker container run -it -p 3000:3000 -p 35729:35729 -v $(pwd):/app react:app
```
