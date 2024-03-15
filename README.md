# Desafio do Dia 2 da Linux Tips - Giropops Senhas
## LinuxTips Giropops Senhas

## Requerimentos
Para iniciar a aplicação, siga os passos abaixo:

1. Faça o build da imagem da aplicação e suba para o Docker Hub:
    ```bash
    docker build -t seu-usuario/linuxtips-giropops-senhas:1.0 .
    docker push seu-usuario/linuxtips-giropops-senhas:1.0

2. Utilize o Docker Compose para iniciar a aplicação e o container do Redis:
    ```bash
    docker-compose up -d
    ```

3. A aplicação estará disponível em http://localhost:5000.

4. Para finalizar aplicação:
    ```bash
    docker-compose down
    ```
Este projeto foi desenvolvido como parte do Desafio do Dia 2 da LinuxTips, que envolveu a criação de um Dockerfile para a aplicação, build, subida no registry da conta do Docker Hub e execução da aplicação com um container separado do Redis usando Docker Compose.
