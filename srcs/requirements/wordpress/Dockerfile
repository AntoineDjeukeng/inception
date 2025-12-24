FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends php-fpm \
 && rm -rf /var/lib/apt/lists/*
CMD ["php-fpm8.2", "-F"]
