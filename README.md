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

2. Utilize o Docker Compose para iniciar a aplicação e o container do Redis:
    ```bash
    docker compose up -d
    ```

3. A aplicação estará disponível em http://localhost:5000.

4. Para finalizar a aplicação:
    ```bash
    docker compose down
    ```


