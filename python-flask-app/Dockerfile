# Using python distroless image
FROM python:3.11-slim AS builder
LABEL maintainer=Swetha
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --target=/packages -r requirements.txt
COPY . .

# Step 2 -  Deploy it using distroless image
FROM gcr.io/distroless/python3-debian12
WORKDIR /app
COPY --from=builder /packages /packages
COPY --from=builder /app /app
ENV PYTHONPATH=/packages
EXPOSE 5000
CMD ["app.py"]
