# DevOps & Deployment Configuration

## Docker Compose
```yaml
version: '3.8'
services:
  mysql:
    image: mysql:8.0
    environment:
      MYSQL_DATABASE: visapro_db
      MYSQL_ROOT_PASSWORD: root_password
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql

  redis:
    image: redis:6.2-alpine
    ports:
      - "6379:6379"

  api:
    build:
      context: ./backend
      dockerfile: Dockerfile
    environment:
      DATABASE_URL: mysql://root:root_password@mysql:3306/visapro_db
      REDIS_URL: redis://redis:6379
    depends_on:
      - mysql
      - redis

  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    ports:
      - "3000:3000"
```

## CI/CD (GitHub Actions)
```yaml
name: CI Pipeline
on: [push]
jobs:
  build-and-test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Install dependencies
        run: npm ci
      - name: Lint
        run: npm run lint
      - name: Test
      - name: Build
        run: npm run build
```
