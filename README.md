# Work In Progress : do not install in production
## TODO
- find a way to let user edit the hook and not overwrite it
- better check if gogs is installed and on the repo format
- backup/restore


# Gogs web hosting for YunoHost

This Yunohost App take an existing gogs repository and serve it with nginx

Gogs is a self-hosted Git service written in Go. Alternative to Github.
- [Gogs website](http://gogs.io)
- [Gogs package for YunoHost](https://github.com/YunoHost-Apps/gogs_ynh)

## Requirements
- Functionnal instance of [YunoHost](https://yunohost.org)
- [Gogs package must](https://github.com/YunoHost-Apps/gogs_ynh) be installed
- The repository that you want to serve must exist in Gogs

## Installation
From command line:

`sudo yunohost app install -l MySite https://github.com/YunoHost-Apps/gogs_webhost_ynh`

## Upgrade
From command line:

`sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/gogs_webhost_ynh gogswebhost`

## Infos

- [YunoHost forum thread](https://forum.yunohost.org/)

## License

This package is published under MIT License
