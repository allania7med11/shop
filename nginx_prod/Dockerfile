# Build front + back static inside the image (no bind mounts, no host writes),
# then serve both from nginx. Build context is the repo root.

# ---- Front: Next.js static export ----
FROM node:18-slim AS front
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY shop_front/package*.json ./
RUN npm install
COPY shop_front/ ./
# NEXT_PUBLIC_* are read from shop_front/.env at build time and baked into the bundle.
RUN npm run export
# -> /app/shop_front/out

# ---- Back: Django collectstatic ----
FROM python:3.11-slim AS back
RUN apt-get update && apt-get install -y libpq-dev gcc && rm -rf /var/lib/apt/lists/*
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
# collectstatic needs no DB and no real secrets; these have no default in settings.
ENV ENVIRONMENT=static
ENV SENTRY_DSN=""
WORKDIR /app
COPY shop_back/requirements.txt ./
RUN pip install --upgrade pip && pip install psycopg2 && pip install -r requirements.txt
COPY shop_back/ ./
RUN python manage.py collectstatic --noinput
# -> /app/shop_back_static/out

# ---- Serve ----
FROM nginx:latest
WORKDIR /etc/nginx
COPY nginx_prod/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/www/shop_front /var/www/shop_back_static
COPY --from=front /app/shop_front/out /var/www/shop_front/out
COPY --from=back /app/shop_back_static/out /var/www/shop_back_static/out
RUN chmod -R 755 /var/www/shop_front /var/www/shop_back_static
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
