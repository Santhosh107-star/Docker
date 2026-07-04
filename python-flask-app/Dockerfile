# Using python distroless image
From python:3.11-slim As builder
Label maintainer=Swetha
workdir /app
RUN python -m venv /venv
copy requirements.txt .
Run /venv/bin/pip install --no-cache-dir -r requirements.txt
copy . .

# Step 2 -  Deploy it using distroless image
FROM gcr.io/distroless/python3-debian12
ENV PATH="/venv/bin:$PATH"
workdir /app
copy --from=builder /venv /venv
copy --from=builder /app /app
ENV PATH="/venv/bin:$PATH"
expose 5000
CMD ["/venv/bin/python", "/app/app.py"]
