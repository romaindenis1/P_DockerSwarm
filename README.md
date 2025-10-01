# DockerSwarm

## Mise en place du swarm
Sur le manager:
```bash
docker swarm init --advertise-addr 192.168.42.10 #Ip du manager
```

Sur les workers:
```bash
docker swarm join --token [Votre Token] [Ip du manager]:2377
```
Vous devriez voir : 
```
This node joined a swarm as a worker.
```


Sur le manager, pour afficher les noeuds du swarm:
```bash
docker node ls
```
## Swarmpit
Sur le manager: 
```
docker run -it --rm \
  --name swarmpit-installer \
  --volume /var/run/docker.sock:/var/run/docker.sock \
swarmpit/install:1.9
```

```
Application setup
Enter stack name [swarmpit]: 
Enter application port [888]: 
Enter database volume driver [local]: 
Enter admin username [admin]: 
Enter admin password (min 8 characters long):
```
Nous avons utilisé la configuration suivante
- Entrer le nom de la stack: swarmpit
- Entrer le port de swarmpit: 888
- Entrer le volume de la DB: local
- Entrer le nom d'utilisateur admin: admin
- Entrer le mot de passe admin: rootroot

Si cela a fonctionner vous devriez voir:
```
Application deployment
Creating network swarmpit_net
Creating service swarmpit_db
Creating service swarmpit_influxdb
Creating service swarmpit_agent
Creating service swarmpit_app
DONE.

Starting swarmpit.........DONE.
Initializing swarmpit...DONE.

Summary
Username: admin
Password: rootroot
Swarmpit is running on port :888

Enjoy :)
```

## Docker Images

MariaDB: https://hub.docker.com/r/romaindenis/mariadb-swarm

To pull the image directly
```
docker pull romaindenis/mariadb-swarm:1.0
```
Port:_3306_

Nginx: https://hub.docker.com/r/romaindenis/nginx-swarm

To pull the image directly
```
docker pull romaindenis/nginx-swarm:1.0
```
Port:_80_

Wordpress: https://hub.docker.com/_/wordpress (no custom image needed)

To pull the image directly
```
docker pull wordpress:6.8.2-fpm-alpine
```
Port:_8080_



