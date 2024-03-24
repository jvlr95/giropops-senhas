# Stage 1: Build
FROM cgr.dev/chainguard/python:latest-dev as builder

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Stage 2: Run
FROM cgr.dev/chainguard/python:latest

WORKDIR /app
ENV PATH="/home/nonroot/.local/bin:$PATH"

# Copy the Flask module to /usr/local/bin
COPY --from=builder /home/nonroot/.local/lib/python3.12/site-packages/flask /usr/local/bin/

COPY app.py .

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

