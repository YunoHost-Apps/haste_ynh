<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Haste for YunoHost

[![Integration level](https://dash.yunohost.org/integration/haste.svg)](https://dash.yunohost.org/appci/app/haste) ![Working status](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)  
[![Install Haste with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Haste quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Haste is an open-source pastebin software written in node.js, which is easily installable in any network. YunoHost Project uses Haste as pastebin for log sharing: [paste.yunohost.org](https://paste.yunohost.org/)


**Shipped version:** 0.1.0~ynh13

**Demo:** http://hastebin.com/

## Screenshots

![Screenshot of Haste](./doc/screenshots/screenshot.png)

## Disclaimers / important information

#### Multi-user support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? **Yes**

## `haste` command

This Haste package for Yunohost includes the [`haste` command](https://github.com/diethnis/standalones/blob/master/hastebin.sh), allowing you to share content from terminal:

```bash
cat something | haste
https://haste.example.com/zuyejeduzu
```
The [Haste-client](https://github.com/seejohnrun/haste-client) is a simple client for uploading data to you Haste server. 

## Documentation and resources

* Official app website: <http://hastebin.com/>
* Official user documentation: <https://hastebin.com/about.md>
* Upstream app code repository: <https://github.com/seejohnrun/haste-server>
* YunoHost documentation for this app: <https://yunohost.org/app_haste>
* Report a bug: <https://github.com/YunoHost-Apps/haste_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
or
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
