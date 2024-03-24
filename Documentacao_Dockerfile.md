# Documentação Dockefile

Este documento descreve a estrutura e os conceitos aplicados no Dockerfile para a construção de uma imagem Docker para uma aplicação Flask, utilizando as imagens seguras do Chainguard.
### Stage 1: Build
```Dockerfile
FROM cgr.dev/chainguard/python:latest-dev as builder
WORKDIR /app
COPY requirements.txt .
RUN python3 -m venv /app/venv && \
    /app/venv/bin/pip install --no-cache-dir -r requirements.txt
COPY . .
```

Nesta etapa, utilizamos uma imagem Python com ferramentas de desenvolvimento para criar um ambiente virtual, instalar as dependências da aplicação e copiar todos os arquivos do contexto para a imagem.

### Stage 2: Run
```Dockerfile
FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=builder /app/venv /app/venv
COPY --from=builder /app/requirements.txt /app/
COPY --from=builder /app/templates /app/templates
COPY --from=builder /app/static /app/static
COPY --from=builder /app/app.py /app/
ENV PATH="/app/venv/bin:$PATH"
EXPOSE 5000
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]
```

Nesta etapa, utilizamos uma imagem Python para execução da aplicação. Copiamos o ambiente virtual, os arquivos da aplicação, os templates e os arquivos estáticos da primeira etapa. Configuramos o ambiente virtual no PATH, expomos a porta 5000 e iniciamos o servidor Flask.

## Chainguard

Chainguard é uma ferramenta de segurança que pode ser utilizada para garantir a segurança do ambiente Docker, porém, sem mais detalhes sobre a configuração específica utilizada, não é possível fornecer informações detalhadas sobre como ela está sendo aplicada neste contexto.
