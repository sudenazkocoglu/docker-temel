# --- 1. Aşama: Derleme ve Paket Kurulumu (Builder) ---
FROM python:3.10-slim AS builder

WORKDIR /app

RUN pip install --no-cache-dir --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

COPY . .

# --- 2. Aşama: Üretim / Çalışma Ortamı (Final) ---
FROM python:3.10-slim

WORKDIR /app

# Sadece kurulan kütüphaneleri birinci aşamadan buraya taşıyoruz
COPY --from=builder /install /usr/local
COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
