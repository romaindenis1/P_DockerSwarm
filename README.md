# DockerSwarm

## Mise en place du swarm
Sur le manager:
```bash
docker swarm init --advertise-addr 192.168.42.10
```

Sur les workers:
```bash
docker swarm join --token SWMTKN-1-5xba1ukq7sz8kh0bbd97il6y0g9nj8bqo4902p2zhtv974b1f9-2lubgrkjak1n6k49jlmy9e0sz 192.168.42.10:2377
```

Sur le manager, pour afficher les noeuds du swarm:
```bash
docker node ls
```