# Docker GUI Apps
Running the applications in a container instead of on the host, to avoid installing multiple libraries
on your host.

The usage is pretty straight forward, just cd in one of the directory and execute the following:
```bash
cd phpstorm
docker build -t apps/phpstorm .
```

To start the containerized app each folder has its on shell script with the lengthy docker command.
It assumes you named the docker images as the above example, aka `apps/<directory name>`.

You can create a symlink so it is globally available to start them.
