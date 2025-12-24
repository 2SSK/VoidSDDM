# Идеи для улучшения темы SDDM

## Визуальные улучшения

### Фон
- **Фоновое изображение** — `backgroundImage=/path/to/image.jpg`
- **Размытие фона** — `backgroundBlur=10` (0-50)
- **Градиент фона** — `backgroundGradient=#000000:#1a1a1a` (начало:конец)
- **Видео фон** — `backgroundVideo=/path/to/video.mp4` (опционально)

### Эффекты
- **Тени для элементов** — `shadowEnabled=true`, `shadowColor=#000000`, `shadowRadius=5`, `shadowOffsetX=0`, `shadowOffsetY=2`
- **Свечение (glow) для активных элементов** — `glowEnabled=true`, `glowColor=#ffffff`, `glowRadius=10`
- **Прозрачность элементов** — `elementOpacity=1.0` (0.0-1.0)
- **Размытие элементов** — `elementBlur=0` (для эффекта glassmorphism)

### Анимации
- **Тип анимации появления** — `fadeInType=fade|slide|scale|none`
- **Направление появления** — `fadeInDirection=top|bottom|left|right|center`
- **Пульсация для активного поля** — `pulseActiveField=true`, `pulseDuration=1000`
- **Анимация при переключении пользователей** — `userSwitchAnimation=true`

## Функциональность

### Информация о системе
- **Дата и время** — `showDateTime=true`, `dateTimeFormat="dd.MM.yyyy HH:mm"`, `dateTimePosition=topRight|topLeft|bottomRight|bottomLeft`
- **Hostname** — `showHostname=true`, `hostnamePosition=topRight|topLeft`
- **Информация о системе** — `showSystemInfo=true` (CPU, RAM, uptime)
- **Приветственное сообщение** — `greetingMessage="Добро пожаловать!"`, `greetingPosition=top|center`

### Пользователи
- **Аватары пользователей** — `showUserAvatars=true`, `avatarSize=64`, `avatarPosition=left|right|top|bottom`
- **Иконки пользователей** — `showUserIcons=true`, `userIconSize=32`
- **Количество пользователей** — `showUserCount=true`
- **Последний вход** — `showLastLogin=true`, `lastLoginFormat="dd.MM.yyyy HH:mm"`

### Пароль
- **Минимальная длина пароля** — `minPasswordLength=0` (0 = без ограничений)
- **Индикатор силы пароля** — `showPasswordStrength=true`
- **Автоочистка после ошибки** — `clearPasswordOnError=true`
- **Звук при вводе** — `passwordInputSound=false`
- **Автозаполнение** — `autoCompletePassword=false` (для тестирования)

### Селекторы
- **Клавиатурные подсказки в селекторах** — `showSelectorHints=true` (← → для навигации)
- **Анимация переключения** — `selectorSwitchAnimation=true`
- **Превью следующего/предыдущего** — `showSelectorPreviewNext=true` (показывать соседние элементы)
- **Количество элементов в превью** — `selectorPreviewCount=3`

### Кнопки питания
- **Скрывать до наведения** — `hidePowerButtonsUntilHover=true`
- **Показывать только при наведении на область** — `showPowerButtonsOnAreaHover=true`
- **Подсказки при наведении** — `showPowerButtonTooltips=true` ("Shutdown", "Restart", "Suspend")
- **Подтверждение действий** — `confirmPowerActions=true`, `confirmDelay=2000` (мс)

## Улучшения UX

### Навигация
- **Tab для переключения между элементами** — `enableTabNavigation=true`
- **Esc для возврата** — `enableEscToReturn=true`
- **Цифры для выбора пользователя** — `enableNumberSelection=true` (1-9 для быстрого выбора)
- **Поиск пользователя** — `enableUserSearch=true` (начинать вводить имя)

### Обратная связь
- **Звуки** — `enableSounds=true`, `soundVolume=50` (0-100)
  - Звук при нажатии клавиш
  - Звук при ошибке входа
  - Звук при успешном входе
- **Визуальная обратная связь** — `visualFeedback=true`
  - Подсветка при наведении
  - Анимация при клике
  - Индикатор загрузки при входе

### Доступность
- **Высокий контраст** — `highContrastMode=false`
- **Увеличенный шрифт** — `largeFontMode=false`
- **Цветовая схема для дальтоников** — `colorBlindMode=false`
- **Поддержка экранного диктора** — `screenReaderSupport=true`

## Кастомизация

### Темизация
- **Темная/светлая тема** — `themeVariant=dark|light|auto`
- **Цветовые схемы** — `colorScheme=default|blue|green|red|purple|custom`
- **Кастомные цвета** — `customPrimaryColor=#ffffff`, `customSecondaryColor=#888888`
- **Стиль границ** — `borderStyle=solid|dashed|dotted|none`

### Шрифты
- **Разные шрифты для разных элементов** — 
  - `passwordFieldFontFamily=...`
  - `selectorFontFamily=...`
  - `previewFontFamily=...`
- **Жирность шрифтов** — `fontWeight=normal|bold|light`
- **Стиль шрифтов** — `fontStyle=normal|italic`

### Иконки
- **Кастомные иконки вместо эмодзи** — `useCustomIcons=true`, `iconPath=/path/to/icons/`
- **Размер иконок** — `iconSize=24`
- **Цвет иконок** — `iconColor=#ffffff`
- **SVG иконки** — поддержка SVG вместо эмодзи

## Безопасность

### Защита
- **Задержка после неудачных попыток** — `loginAttemptDelay=1000` (увеличивается с каждой попыткой)
- **Блокировка после N попыток** — `maxLoginAttempts=5`, `lockoutDuration=300000` (5 минут)
- **Таймер блокировки** — `showLockoutTimer=true`
- **Капча** — `enableCaptcha=false` (опционально, сложно реализовать)

### Аудит
- **Логирование попыток входа** — `logLoginAttempts=true`
- **Уведомления** — `notifyOnFailedLogin=true`

## Дополнительно

### Интеграции
- **Погода** — `showWeather=true`, `weatherAPIKey=...`, `weatherLocation=...`
- **Календарь** — `showCalendar=true`
- **Уведомления** — `showNotifications=true`
- **Статус системы** — `showSystemStatus=true` (обновления, ошибки)

### Экспериментальное
- **3D эффекты** — `enable3DEffects=false`
- **Частицы на фоне** — `enableParticles=true`, `particleCount=50`
- **Параллакс эффект** — `enableParallax=true`
- **Режим презентации** — `presentationMode=false` (скрыть все кроме основного)

### Производительность
- **Оптимизация рендеринга** — `enableHardwareAcceleration=true`
- **Кэширование** — `enableCaching=true`
- **Ленивая загрузка** — `lazyLoadComponents=true`

## Приоритетные (из todo.txt)

1. ✅ **Скрывать power buttons до наведения** — `hidePowerButtonsUntilHover=true`
2. ✅ **Кастомные иконки вместо эмодзи** — `useCustomIcons=true`
3. ✅ **Дата и время** — `showDateTime=true`
4. ✅ **Hostname** — `showHostname=true`
5. ✅ **Приветственное сообщение** — `greetingMessage="..."`