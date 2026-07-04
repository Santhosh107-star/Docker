# Using python distroless image
From python:3.11-slim As builder
Label maintainer=Swetha
workdir /app
RUN pip install --no-cache-dir --target=/packages -r requirements.txt
copy requirements.txt .
Run pip install --no-cache-dir -r requirements.txt
copy . .

# Step 2 -  Deploy it using distroless image
FROM gcr.io/distroless/python3-debian12
workdir /app
copy --from=builder /packages /packages
copy --from=builder /app /app
expose 5000
CMD ["app.py"]
