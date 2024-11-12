# Turma 8611 aulas de review


## Pré-requisitos

- Docker Engine >=20
- Linux, Windows ou MacOs

## Inicialize o ambiente:


```docker-compose up -d```


## Instale no Jenkins: 

```apt update && apt install docker.io -y```

### Usando o Jenkins no Kind

Criar Cluster: 

```kind create cluster --config cluster.yaml```


Baixa chart:

```bash
helm repo add jenkins https://charts.jenkins.io
helm repo update
```

Install Jenkins

```bash
helm upgrade --install jenkins jenkins/jenkins \
  --set controller.serviceType=NodePort \
  --set controller.serviceAccount.name=jenkins \
  --set controller.image.repository=silvemerson/jenkins-with-kubectl \
  --set controller.image.tag=latest
```

Senha:

```bash
kubectl exec -it jenkins-0 -- cat /var/jenkins_home/secrets/initialAdminPassword

```