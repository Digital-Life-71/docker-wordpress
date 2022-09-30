# Docker Desktop Ubuntu :

[Скачать Docker Desktop для Ubuntu](https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64)

### Удаляем старые версии

```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

### Настрраиваем репозиторий

```
sudo apt-get update
```

```
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

### Добавьте официальный GPG-ключ Docker:
```
sudo mkdir -p /etc/apt/keyrings
```

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

### Используйте следующую команду для настройки репозитория

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

## Установка Docker Engine
```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

###  Проверяем роботу, запускаем hello-world 
```
sudo docker run hello-world
```