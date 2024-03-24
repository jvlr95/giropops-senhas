# Atualizando desafio do dia 2 para uso de distroless da Linux Tips - Giropops Senhas
* LinuxTips Giropops Senhas
* Imagens de container da Chainguard
* Requerimentos
- Docker instalado, seguir guia de instalação em [documentação](https://docs.docker.com/engine/install/)

Para iniciar a aplicação, siga os passos abaixo:

1. Clone o repositório:
   ```bash
   git clone https://github.com/jvlr95/giropops-senhas.git
   ```

2. Edite o arquivo `docker-compose.yml` e, ao invés de usar a imagem baixada do Docker Hub, utilize o seguinte conteúdo:
   ```yaml
   version: '3.8'
   services:
     giropops-senhas:
       container_name: giropops-senhas
       #image: jvlr9510/chainguard-giropops-senha:latest
       build:
         context: .
         dockerfile: ./Dockerfile
       ports:
         - "5000:5000"
       depends_on:
         - redis
       environment:
         - FLASK_ENV=development
     redis:
       container_name: redis    
       image: redis:7.2
   ```

3. Utilize o Docker Compose para iniciar a aplicação e o container do Redis:
    ```bash
    docker compose up -d
    ```

4. A aplicação estará disponível em http://localhost:5000.

5. Para finalizar a aplicação:
    ```bash
    docker compose down
    ```

---

