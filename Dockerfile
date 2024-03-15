FROM cgr.dev/chainguard/python:latest-dev AS builder
  
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --user

COPY . .

FROM cgr.dev/chainguard/python:latest

WORKDIR /app

COPY --from=builder /home/nonroot/.local /home/nonroot/.local

COPY app.py .
COPY templates templates/
COPY static static/
ENV PATH="/home/nonroot/.local/bin:${PATH}"
EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

