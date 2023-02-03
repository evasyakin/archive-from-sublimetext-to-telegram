# Отправка файла или директории в rar формате из SublimeText в Telegram
Через контекстное меню sublime-плагина `Side Bar Enhancements` 

## Результат будет выглядеть так:
`Правый клик на файле/директории в сайдбаре SublimeText` > `Open With` > `Telegram (send rar)`

![Результат](https://repository-images.githubusercontent.com/596893155/3bf86e38-6c2f-46e6-ac9b-a586f90bccfa)

## Настройка:

### Подготовьте `archive-to-telegram.cmd`

1. Установите путь к WinRAR и Telegram Desktop в `archive-to-telegram.cmd`
```bash
set WINRAR_PATH="Путь к WinRAR\Rar.exe"
set TELEGRAM_PATH="Путь к Telegram Desktop\Telegram.exe"
```

### Добавьте пункт меню в `Side Bar Enhancements` (плагин для SublimeText)

1. Для этого перейдите в файл настройки раздела `Open With`: 
`Правый клик на файле/директории в сайдбаре SublimeText` > `Open With` > `Edit Applications...`

2. Вставьте туда соответствующую кнопку/приложение из `Side Bar.sublime-menu`

3. Установите ваш путь к `archive-to-telegram.cmd`

