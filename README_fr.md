<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Haste pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/haste.svg)](https://dash.yunohost.org/appci/app/haste) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)

[![Installer Haste avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Haste rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Haste est un logiciel pastebin open-source écrit en node.js, facilement installable sur n'importe quel réseau. Le projet YunoHost utilise Haste comme pastebin pour le partage de log : [paste.yunohost.org](https://paste.yunohost.org/)


**Version incluse :** 0.1.2024.06.17~ynh1

**Démo :** <https://www.toptal.com/developers/hastebin>

## Captures d’écran

![Capture d’écran de Haste](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Documentation officielle utilisateur : <https://www.toptal.com/developers/hastebin/about>
- Dépôt de code officiel de l’app : <https://github.com/toptal/haste-server>
- YunoHost Store : <https://apps.yunohost.org/app/haste>
- Signaler un bug : <https://github.com/YunoHost-Apps/haste_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
ou
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
