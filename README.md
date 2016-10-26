# Haste for YunoHost

Haste is an open-source pastebin software written in node.js.

[Haste Github repository](https://github.com/seejohnrun/haste-server)

A publicly available version can be found at [http://hastebin.com/](http://hastebin.com/)

## Requirements
- Functionnal instance of [YunoHost](https://yunohost.org)

## `haste` command

With this package is included the `haste` command based on this:
https://github.com/diethnis/standalones/blob/master/hastebin.sh

This allow to pipe text to it and upload the text on your haste instance. You can also install it on your local computer by copying the file /usr/bin/haste on a computer that has bash and curl.

```
bash
cat LICENSE | haste
######################################################################## 100,0%
https://haste.example.com/zuyejeduzu
```

## Installation
From command line:

`sudo yunohost app install -l Haste https://github.com/YunoHost-Apps/haste_ynh`

## Upgrade
From command line:

`sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/haste_ynh haste`

## Infos

- [YunoHost forum thread](https://forum.yunohost.org/)

## License

Both Haste and this package are published under MIT License
