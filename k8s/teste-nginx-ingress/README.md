--> Criar um pod usando o kubectl run:

```
kubectl run nginx --image nginx --port 80
```

--> Expor o service usando:

```
kubectl expose pod nginx
```

--> Aplicar arquivo ingress:

kubectl apply -f nginx-ingress-v4.yml 

***Obs: Criado apenas como laboratorio para estudos Ingress, pelo curso da LinuxTips - Programa Intensivo de Containers e Kuberentes 2024***
