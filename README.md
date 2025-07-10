# Basics of operating systems | Docker and containerization

## Завдання 1 - Перевірка доступності вебсайтів

Скрипт для автоматичної перевірки доступності вебсайтів.

### Файли:
- `task1/website_checker.sh` - скрипт для перевірки доступності сайтів
- `task1/website_status.log` - файл з результатами перевірки (створюється після запуску скрипта)

### Використання:

#### У WSL:
```bash
cd task1
chmod +x website_checker.sh
./website_checker.sh
```

#### У Git Bash/PowerShell:
```bash
cd task1
bash website_checker.sh
```

### Особливості:
- Перевіряє доступність сайтів: google.com, facebook.com, twitter.com
- Обробляє переадресацію
- Записує результати у файл `website_status.log`
- Формат виводу: `<URL> is UP/DOWN`

### Приклад результату:
```
<https://google.com> is UP
<https://facebook.com> is UP
<https://twitter.com> is UP
```

## Завдання 2 - FastAPI застосунок з Docker та PostgreSQL

Клонування, налаштування та запуск FastAPI застосунку в Docker контейнері з підключенням до PostgreSQL.

### Файли:
- `task2/` - директорія з FastAPI застосунком
- `task2/Dockerfile` - файл для створення Docker образу
- `task2/docker-compose.yaml` - конфігурація для запуску застосунку та бази даних
- `task2/conf/db.py` - налаштування підключення до бази даних

### Використання:

#### Попередні вимоги:
1. Запустіть Docker Desktop
2. Переконайтеся, що Docker працює: `docker ps`

#### Запуск застосунку:
```bash
cd task2
docker-compose up --build
```

#### Для запуску у фоновому режимі:
```bash
cd task2
docker-compose up --build -d
```

#### Зупинка застосунку:
```bash
cd task2
docker-compose down
```

### Особливості:
- FastAPI застосунок на порту 8000
- PostgreSQL база даних на порту 5432
- Автоматична перевірка здоров'я бази даних
- Перезапуск контейнерів при збоях
- Постійне зберігання даних PostgreSQL

### Тестування:
1. Відкрийте браузер та перейдіть на `http://localhost:8000`
2. Натисніть кнопку "Перевірити БД" для тестування підключення до бази даних
3. При успішному підключенні з'явиться повідомлення "Welcome to FastAPI!"

## Структура проекту

```
goit-cs-hw-02/
├── task1/                   # Завдання 1 - Перевірка доступності вебсайтів
│   ├── website_checker.sh   # Скрипт для перевірки сайтів
│   └── website_status.log   # Результати перевірки
└── task2/                   # Завдання 2 - FastAPI з Docker та PostgreSQL
    ├── Dockerfile           # Docker образ для FastAPI
    ├── docker-compose.yaml  # Конфігурація сервісів
    ├── .dockerignore       # Виключення файлів з образу
    ├── main.py             # Головний файл FastAPI
    ├── requirements.txt    # Python залежності
    ├── conf/
    │   └── db.py           # Налаштування бази даних
    ├── templates/
    │   └── index.html      # HTML шаблон
    └── static/             # Статичні файли (CSS, JS)
```
