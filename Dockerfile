# Använd en officiell Python-image som bas
FROM python:3.9-slim

# Sätt arbetskatalogen inuti containern
WORKDIR /app

# Kopiera filen med dependencies först (för att dra nytta av cache)
COPY requirements.txt .

# Installera dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Kopiera resten av applikationskoden
COPY . .

# Exponera porten som appen körs på
EXPOSE 5000

# Kommando för att köra appen när containern startar
CMD ["python3", "app.py"]