# Stack name
stack_name=wp

# Wordpress
# Trouver le nombre de répliques
# Trouver l'usage des ressources
# Si usage > 75%, créer 3 répliques en plus
# Si usage < 50%, enlever 3 répliques
num_replicas=$(docker service inspect "${stack_name}_wordpress" --format '{{json .Spec.Mode.Replicated.Replicas}}')
docker node ls | grep -v Leader | grep -v Reachable | cut -c 31-47 | grep -v HOSTNAME | xargs -I"SERVER" sh -c "echo SERVER; ssh SERVER docker stats --no-stream"
docker service scale "${stack_name}_wordpress"=$(($num_replicas+3))
wait
# Nginx

# Mariadb?