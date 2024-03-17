# Estágio de construção
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Estágio final
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 5000
RUN pip install flask redis prometheus_client
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
