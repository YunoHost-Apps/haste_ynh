<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Haste untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/haste.svg)](https://ci-apps.yunohost.org/ci/apps/haste/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/haste.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/haste.maintain.svg)

[![Pasang Haste dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=haste)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Haste secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Haste is an open-source pastebin software written in node.js, which is easily installable in any network. YunoHost Project uses Haste as pastebin for log sharing: [paste.yunohost.org](https://paste.yunohost.org/)


**Versi terkirim:** 0.1.2024.07.26~ynh1

**Demo:** <http://hastebin.com/>

## Tangkapan Layar

![Tangkapan Layar pada Haste](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <http://hastebin.com/>
- Dokumentasi pengguna resmi: <https://hastebin.com/about.md>
- Depot kode aplikasi hulu: <https://github.com/toptal/haste-server>
- Gudang YunoHost: <https://apps.yunohost.org/app/haste>
- Laporkan bug: <https://github.com/YunoHost-Apps/haste_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/haste_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
atau
sudo yunohost app upgrade haste -u https://github.com/YunoHost-Apps/haste_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
