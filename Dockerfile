# ── Telegram Premium Referral Bot — Railway Deployment ──────────────────────
FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Saari files directly copy karo (telegram-bot/ folder nahi chahiye)
COPY . ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]
