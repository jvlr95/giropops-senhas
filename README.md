# LinuxTips Giropops Senhas

## Imagens de container da Chainguard

### Requerimentos
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

---

Foi realizado testes com a ferramenta trivy para validar questões de seguranças e vulnerabilidades.
* Para mais informações da ferramenta acesse (trivy)[https://trivy.dev/]

A primeira imagem buildada foi `jvlr9510/linuxtips-giropops-senhas:chaiguard` e foram encontradas algumas vulnerabilidades, conforme evidenciado no print `./Vulnerabilidades_encontradas.png`.

Após isso, foi alterada a versão de todas dependências seguindo o esquema de fixed e atualizado o arquivo `./requirements.txt`. Foi buildada uma nova imagem com a tag `jvlr9510/linuxtips-giropops-senhas:chaiguardv1.0`, esta sem vulnerabilidades registradas no momento, conforme evidenciado em anexo `./Sem-Vulnerabilidades.png`.
```

