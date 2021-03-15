# Haste for YunoHost

[![Integration level](https://dash.yunohost.org/integration/haste.svg)](https://dash.yunohost.org/appci/app/haste) ![](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)  
[![Install Haste with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Haste quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Haste is an open-source pastebin software written in node.js, which is easily installable in any network. YunoHost Project uses Haste as pastebin for log sharing: [paste.yunohost.org](https://paste.yunohost.org/)

**Shipped version:** 0.1.0 (7.10.2020)

## Screenshots

![](sources/screenshot.png)

## Demo

* [Official demo](http://hastebin.com/)

## Configuration

 * How to configure this app: a plain file with SSH.

## Documentation

 * Official documentation: https://hastebin.com/about.md
 * YunoHost documentation: https://yunohost.org/en/app_haste

## YunoHost specific features

#### Multi-user support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/haste%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/haste/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/haste%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/haste/)

## Limitations

* Any known limitations.

## Additional information

## `haste` command

This Haste package for Yunohost includes the [`haste` command](https://github.com/diethnis/standalones/blob/master/hastebin.sh), allowing you to share content from terminal:

```bash
cat something | haste
https://haste.example.com/zuyejeduzu
```
The [Haste-client](https://github.com/seejohnrun/haste-client) is a simple client for uploading data to you Haste server. 

## Links

 * Report a bug: https://github.com/YunoHost-Apps/haste_ynh/issues
 * Upstream app repository: https://github.com/seejohnrun/haste-server
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
or
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```
