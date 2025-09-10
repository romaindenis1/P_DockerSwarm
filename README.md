# DockerSwarm

## Mise en place du swarm
Sur le manager:
```bash
docker swarm init --advertise-addr 192.168.42.10
```

Sur les workers:
```bash
docker swarm join --token [Votre Token]
```
Vous devriez voire : *This node joined a swarm as a worker.*


Sur le manager, pour afficher les noeuds du swarm:
```bash
docker node ls
```
