# Using python distroless image
From python:3.11-slim As builder
Label maintainer=Swetha
workdir /app
copy requirements.txt .
Run pip install --no-cache-dir -r requirements.txt

# Step 2 -  Deploy it using distroless image
From gcr.io/distroless/python3
workdir /app
copy --from=builder . .
expose 5000
Cmd ["python", "app.py"]