<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Haste YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/haste.svg)](https://ci-apps.yunohost.org/ci/apps/haste/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)

[![Instalatu Haste YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Haste YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Haste is an open-source pastebin software written in node.js, which is easily installable in any network. YunoHost Project uses Haste as pastebin for log sharing: [paste.yunohost.org](https://paste.yunohost.org/)


**Paketatutako bertsioa:** 0.1.2024.07.26~ynh2

**Demoa:** <http://hastebin.com/>

## Pantaila-argazkiak

![Haste(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://hastebin.com/>
- Erabiltzaileen dokumentazio ofiziala: <https://hastebin.com/about.md>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/toptal/haste-server>
- YunoHost Denda: <https://apps.yunohost.org/app/haste>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/haste_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
edo
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
