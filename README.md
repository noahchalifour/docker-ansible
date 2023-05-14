# Docker Ansible

This repo configures a Docker image with [Ansible](https://www.ansible.com) pre-installed.

### Building the Image

To build the image, run the following command:

```
docker build -t docker-ansible .
```

### Basic Usage

You can use the image as if you were just running `ansible` normally, with SSH keys passed through to the container, example:

```
docker run -it --rm \
    -v ~/.ssh:/root/.ssh \
    -v $(pwd):/ansible \
    docker-ansible \
    ansible --version
```
