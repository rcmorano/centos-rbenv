# What you get

A ready to use centos-rbenv-ruby containers to use as base image for your development containers.

# How to use

You can just pull the image from the official 'docker' index since it's a trusted build linked with github 'Dockerfile' in this repo:
```
docker pull rcmorano/centos-rbenv
#docker pull rcmorano/centos-rbenv:6
#docker pull rcmorano/centos-rbenv:5
```

Or you can build the image yourself:
```
git clone https://github.com/rcmorano/centos-rbenv.git
docker build -t rcmorano/centos-rbenv:latest centos-rbenv/
```

You'll get a ruby-stable-able interactive container for messing up with some gemsets:

```
docker run -t -i rcmorano/centos-rbenv
```

# Supported versions

There will be a branch of this repo for each CentOS version. Just take a look at the current branches :]
