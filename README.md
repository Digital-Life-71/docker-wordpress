#Docker:

1. Установка Docker Engine:
```
$ sudo dnf remove docker \
          docker-client \
          docker-client-latest \
          docker-common \
          docker-latest \
          docker-latest-logrotate \
          docker-logrotate \
          docker-selinux \
          docker-engine-selinux \
          docker-engine
```
```
$ sudo dnf -y install dnf-plugins-core
```
```
$ sudo dnf config-manager \
                --add-repo \
                https://download.docker.com/linux/fedora/docker-ce.repo
```
```
$ sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
2. Установка Docker Desktop

    а) Перед установкой необходимо установить Docker Engine (инструкция выше)

    b) Скачать свежий rpm-пакет:

    https://desktop.docker.com/linux/main/amd64/docker-desktop-4.11.0-x86_64.rpm?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64

    c) Установить по команде:
```
$ sudo dnf install ./docker-desktop-<version>-<arch>.rpm
```
Docker Desktop установлен.

Далее возникает ошибка при попытке залогиниться в приложении.

Решение:
```
$ sudo apt-get install pass
```
если не сработает, то
```
$ sudo yum install pass
```
далее
```
$ wget https://github.com/docker/docker-credential-helpers/releases/download/v0.6.0/docker-credential-pass-v0.6.0-amd64.tar.gz && tar -xf docker-credential-pass-v0.6.0-amd64.tar.gz && chmod +x docker-credential-pass && sudo mv docker-credential-pass /usr/local/bin/
```
```
$ gpg2 --gen-key
```
```
$ pass init "<Your Name>"
```
```
$ sed -i '0,/{/s/{/{\n\t"credsStore": "pass",/' ~/.docker/config.json
```
```
$ docker login
```
