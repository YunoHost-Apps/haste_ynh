<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Haste per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/haste.svg)](https://dash.yunohost.org/appci/app/haste) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)

[![Installa Haste con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Haste su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Haste is an open-source pastebin software written in node.js, which is easily installable in any network. YunoHost Project uses Haste as pastebin for log sharing: [paste.yunohost.org](https://paste.yunohost.org/)


**Versione pubblicata:** 0.1.2023.09.21~ynh2

**Prova:** <http://hastebin.com/>

## Screenshot

![Screenshot di Haste](./doc/screenshots/screenshot.png)

## Documentazione e risorse

- Sito web ufficiale dell’app: <http://hastebin.com/>
- Documentazione ufficiale per gli utenti: <https://hastebin.com/about.md>
- Repository upstream del codice dell’app: <https://github.com/seejohnrun/haste-server>
- Store di YunoHost: <https://apps.yunohost.org/app/haste>
- Segnala un problema: <https://github.com/YunoHost-Apps/haste_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
o
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
