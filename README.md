# Git Test - Ödev 1.3
## Docker Multi-Stage Build Sonuçları
İmaj boyutunu optimize etmek için Multi-Stage Build (Çok aşamalı inşa) yöntemi kullanılmıştır. 

- **Optimizasyon Öncesi İmaj Boyutu:** ~1 GB (Standart Python imajı)
- **Multi-Stage Sonrası İmaj Boyutu:** 204 MB
# Docker Temel Çalışması - FastAPI & PostgreSQL

Bu repo, Yazılım Mühendisliği stajı / öğrenme süreçlerim kapsamında Docker temellerini öğrenmek ve uygulamak amacıyla oluşturulmuştur.

## Proje İçeriği
* **FastAPI Uygulaması:** `main.py` üzerinden çalışan basit bir "Hello World" servisi.
* **Dockerfile & Multi-stage Build:** Python 3.10 slim tabanlı, üretim ortamı için optimize edilmiş çok aşamalı imaj inşası.
* **Docker Compose:** FastAPI web servisi ile PostgreSQL veritabanını (`db`) aynı sanal ağda, ortak environment değişkenleriyle birlikte ayağa kaldıran yapılandırma (`docker-compose.yml`).

## Kazanımlar
* Docker imajı oluşturma (`docker build`) ve konteyner yönetimi (`docker run`, `docker rm`).
* Çoklu servis mimarisi (`docker compose up`).
* Multi-stage build ile imaj boyutunun optimize edilmesi ve gereksiz derleme araçlarının üretim imajından arındırılması.
