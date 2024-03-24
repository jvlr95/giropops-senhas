# Estágio de construção
FROM cgr.dev/chainguard/python:latest-dev AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Estágio final
FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
