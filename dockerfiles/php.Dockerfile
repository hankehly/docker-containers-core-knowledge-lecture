FROM php:8.2.1
WORKDIR /app
COPY scripts/hello_world.php .
CMD php hello_world.php
