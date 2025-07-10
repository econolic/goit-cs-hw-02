# goit-cs-hw-02
Basics of operating systems | Docker and containerization

## Завдання 1 - Перевірка доступності вебсайтів

Скрипт для автоматичної перевірки доступності вебсайтів.

### Файли:
- `website_checker.sh` - скрипт для перевірки доступності сайтів

### Використання:

#### У WSL:
```bash
chmod +x website_checker.sh
./website_checker.sh
```

#### У Git Bash/PowerShell:
```bash
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
