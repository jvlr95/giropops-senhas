# Stage 1: Build
FROM cgr.dev/chainguard/python:latest-dev as builder

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Stage 2: Run
FROM cgr.dev/chainguard/python:latest

WORKDIR /app
COPY --from=builder /app /app
ENV PATH="/app:$PATH"
COPY app.py .

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

