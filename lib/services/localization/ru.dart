import 'en.dart';

class Ru implements En {
  Direction $direction = Direction.ltr; // Russian is LTR
  String $name = "Русский";
  String $code = "ru";

  Map<String, String> dictionary = {
    // common
    "cancel": "Отмена",
    "close": "Закрыть",
    "save": "Сохранить",
    "reset": "Сбросить",
    "continue": "Продолжить",
    "add": "Добавить",
    "edit": "Редактировать",
    "delete": "Удалить",
    "archive": "Архивировать",
    "restore": "Восстановить",
    "logout": "Выйти",
    "noResultsFound": "Ничего не найдено",
    "home": "Главная",
    "calendar": "Календарь",
    "gettingImages": "Получение изображений",

    // call
    "callLaboratory": "Позвонить в лабораторию",
    "callPatient": "Позвонить пациенту",
    "emailDoctor": "Написать доктору",
    "callIssuer": "Позвонить эмитенту",

    // screens
    "settings": "Настройки",
    "dashboard": "Панель управления",
    "appointments": "Записи",
    "patients": "Пациенты",
    "doctors": "Доктора",
    "labworks": "Лабораторные работы",
    "statistics": "Статистика",

    // dashboard
    "admin": "Администратор",
    "fullStats": "Полная статистика",
    "payments": "Платежи",
    "appointmentsToday": "Записи на сегодня",
    "patientsToday": "Пациенты сегодня",
    "newPatientsToday": "Новые пациенты сегодня",
    "paymentsMadeToday": "Платежи сегодня",
    "modeAdmin": "АДМИН",
    "modeUser": "ПОЛЬЗОВАТЕЛЬ",
    "modeOffline": "ОФФЛАЙН",
    "onceConnectionIsStable":
        "Как только ваше соединение станет стабильным, вы сможете использовать кнопку в правом верхнем углу для повторного подключения.",
    "unRestrictedAccess": "неограниченный доступ в приложении",
    "restrictedAccess":
        "ограниченный доступ к некоторым экранам, согласно указаниям администратора",
    "youAreCurrentlyIn": "Вы сейчас в",
    "mode": "режиме",
    "youHave": "У вас",
    "hello": "Здравствуйте",

    // datatable
    "archiveSelected": "Архивировать выбранные",
    "searchPlaceholder": "Поиск...",
    "showHideArchived": "Показать/скрыть архивированные",
    "showing": "Показывается",
    "by": "По",
    "byTitle": "По названию",
    "byDate": "По дате",
    "noItemsFound": "Элементы не найдены",
    "filter": "Фильтр",

    // doctors
    "doctor": "Доктор",
    "newDoctor": "Новый доктор",
    "doctorDetails": "Информация о докторе",
    "pastAppointments": "Прошлые записи",
    "upcomingAppointments": "Предстоящие записи",
    "doctorName": "Имя доктора",
    "doctorEmail": "Электронная почта доктора",
    "dutyDays": "Рабочие дни",
    "addAppointment": "Добавить запись",
    "lockToUsers":
        "Только следующие пользователи могут просматривать/редактировать данные и записи этого доктора",
    "noUpcomingAppointmentsForThisDoctor":
        "Предстоящих записей не найдено. Используйте кнопку ниже, чтобы добавить новую запись.",

    // days and months
    "monday": "Понедельник",
    "tuesday": "Вторник",
    "wednesday": "Среда",
    "thursday": "Четверг",
    "friday": "Пятница",
    "saturday": "Суббота",
    "sunday": "Воскресенье",
    "january": "Январь",
    "february": "Февраль",
    "march": "Март",
    "april": "Апрель",
    "may": "Май",
    "june": "Июнь",
    "july": "Июль",
    "august": "Август",
    "september": "Сентябрь",
    "october": "Октябрь",
    "november": "Ноябрь",
    "december": "Декабрь",

    // appointment card
    "appointment": "Запись",
    "patient": "Пациент",
    "photos": "Фотографии",
    "pre-opNotes": "Предоперационные заметки",
    "post-opNotes": "Послеоперационные заметки",
    "prescription": "Рецепт",
    "pay": "Оплатить",
    "paid": "Оплачено",
    "price": "Цена",
    "underpaid": "Недоплачено",
    "overpaid": "Переплачено",
    "fullyPaid": "Полностью оплачено",
    "paymentSummary": "Сводка платежей",
    "editingAppointment": "Редактирование записи",
    "after": "После",
    "days": "дней",
    "day": "день",
    "isDone": "Запись выполнена",

    // patients
    "patientDetails": "Информация о пациенте",
    "Age": "Возраст",
    "Gender": "Пол",
    "Last visit": "Последний визит",
    "Pay": "Оплата",
    "Total payments": "Всего платежей",
    "daysAgo": "дней назад",
    "noVisits": "Нет визитов",
    "addNewPatient": "Добавить нового пациента",
    "name": "Имя",
    "birthYear": "Год рождения",
    "phone": "Телефон",
    "email": "Электронная почта",
    "address": "Адрес",
    "notes": "Заметки",
    "patientTags": "Теги пациента",
    "male": "Мужской",
    "female": "Женский",
    "noAppointmentsFound":
        "Записей для этого пациента не найдено, используйте кнопку ниже, чтобы добавить новую запись.",
    "editPatient": "Редактировать пациента",
    "editAppointment": "Редактировать запись",
    "patientPage": "Страница пациента",
    "patientCanUseTheFollowing":
        "Пациент может использовать следующую ссылку для доступа к своим записям, платежам и фотографиям.",
    "printQR": "Распечатать QR-код",
    "dentalNotes": "Стоматологические заметки",
    "showPrimary": "Показать первичные",
    "showPermanent": "Показать постоянные",
    "primary": "Первичные",
    "permanent": "Постоянные",
    "lower": "Нижняя",
    "upper": "Верхняя",
    "left": "Левая",
    "right": "Правая",
    "centralIncisor": "Центральный резец",
    "lateralIncisor": "Боковой резец",
    "canine": "Клык",
    "firstPremolar": "Первый премоляр",
    "secondPremolar": "Второй премоляр",
    "firstMolar": "Первый моляр",
    "secondMolar": "Второй моляр",
    "thirdMolar": "Третий моляр",
    "exportSelected": "Экспортировать выбранные",
    "noPatientsSelected": "Пациенты не выбраны",

    // calendar (appointments)
    "allDoctors": "Все доктора",
    "noAppointmentsForThisDay": "На этот день нет записей",
    "weekAbbr": "Н", // Неделя
    "twoWeeksAbbr": "2Н", // 2 Недели
    "monthAbbr": "М", // Месяц
    "today": "Сегодня",
    "newPatient": "Новый пациент",
    "date": "Дата",
    "changeDate": "Изменить дату",
    "changeTime": "Изменить время",
    "attention": "Внимание",
    "doctorNotAvailable":
        "Один из выбранных докторов может быть недоступен в выбранную дату.",
    "time": "Время",
    "preOperativeNotes": "Предоперационные заметки",
    "selectDoctors": "Выбрать докторов",
    "selectPatient": "Выбрать пациента",
    "operativeDetails": "Операционные детали",
    "postOperativeNotes": "Послеоперационные заметки",
    "printPrescription": "Распечатать рецепт",
    "priceIn": "Цена в",
    "paidIn": "Оплачено в",
    "gallery": "Галерея",
    "link": "Ссылка",
    "upload": "Загрузить",
    "camera": "Камера",
    "emptyGallery": "Галерея пуста",
    "noPhotos": "Фотографии еще не загружены.",
    "importingPhotosFromLink": "Импорт фотографий по ссылке",
    "useThisForm":
        "Используйте эту форму для импорта фотографий из общих ссылок, таких как Google Фото, или любой доступной веб-страницы, содержащей фотографии, которые вы хотите добавить к этой записи.",
    "error": "Ошибка",
    "enterLink": "Введите URL, содержащий фотографии",
    "import": "Импорт",

    // labworks
    "laboratory": "Рентген",
    "Laboratory": "Рентген",
    "Month": "месяц",
    "month": "месяц", // added translation
    "paid": "Оплачено", // added translation
    "patient": "Пациент", // added translation
    "newLabwork": "Новая Рентген",
    "labwork": "Рентген работа",
    "labworkTitle": "Название лабораторной работы",
    "orderNotes": "Примечания к заказу",
    "unpaid": "Неоплачено",
    "noSuggestions": "Нет предложений",

    // expenses
    "expense": "Расход",
    "expenses": "Расходы",
    "receipt": "Квитанция",
    "title": "Название",
    "cost": "Стоимость",
    "issuer": "Эмитент",
    "amount": "Сумма",
    "amountIn": "Сумма поступления",
    "status": "Статус",
    "due": "Срок",
    "receiptTitle": "Название квитанции",
    "receiptNotes": "Примечания к квитанции",
    "newReceipt": "Новая квитанция",
    "receiptTags": "Теги квитанции",
    "receiptItems": "Пункты квитанции",
    "specificForDoctors": "Специально для следующих докторов",

    // stats
    "pickRange": "Выбрать диапазон",
    "start": "Начало",
    "end": "Конец",
    "weeks": "Недели",
    "months": "Месяцы",
    "quarters": "Кварталы",
    "years": "Годы",
    "appointmentsPer": "Записи по",
    "paymentsAndExpensesPer": "Платежи и расходы по",
    "newPatientsPer": "Новые пациенты по",
    "doneMissedPer": "Выполнено и пропущено по",
    "timeOfDay": "Время суток",
    "dayOfWeek": "День недели",
    "dayOfMonth": "День месяца",
    "monthOfYear": "Месяц года",
    "patientsGender": "Пол пациентов",
    "total": "Всего",
    "in_Duration_": "за",
    "acquiredPatientsIn": "Приобретенные пациенты за",
    "doneAndMissedAppointmentsIn": "Выполненные и пропущенные записи за",
    "distributionOfAppointments": "Распределение записей",
    "maleAndFemalePatients": "Пациенты мужского и женского пола",
    "done": "выполнено",
    "missed": "пропущено",

    // settings
    "currency": "Валюта",
    "currency_desc":
        "Код валюты, используемый в приложении (например, USD, EUR, RUB, UZS).",
    "phone_desc":
        "Номер телефона будет отображаться в распечатках и на веб-странице пациента.",
    "prescriptionFooter": "Нижний колонтитул рецепта",
    "prescriptionFooter_desc": "Этот текст будет отображаться в конце рецепта.",
    "language": "Язык",
    "language_desc":
        "Язык интерфейса для меню, кнопок и информации, используемой в приложении.",
    "startingDayOfWeek": "Первый день недели",
    "startingDayOfWeek_desc": "День недели, с которого начинается неделя.",
    "dateFormat": "Формат даты",
    "dateFormat_desc":
        "Этот формат будет использоваться для отображения дат, где применимо.",
    "cacheReset": "Сброс кэша",
    "cacheReset_desc":
        "Вы можете использовать следующую кнопку для сброса кэша приложения, кроме изображений. Это может помочь решить некоторые проблемы, с которыми вы сталкиваетесь при синхронизации с другими устройствами.",
    "month/day/year": "Месяц/День/Год",
    "day/month/year": "День/Месяц/Год",
    "appliesTo": "Применяется к",
    "all": "Всем",
    "you": "вам",
    "initialSynchronization": "Начальная синхронизация",
    "synchronizing": "Синхронизация",
    "clearingLocalData": "Очистка локальных данных",

    // advanced settings: Backups
    "backups": "Резервные копии",
    "refresh": "Обновить",
    "download": "Скачать",
    "createNew": "Создать новую",
    "restoreBackup": "Восстановить резервную копию",
    "restoreBackupWarning1":
        "Восстановление этой резервной копии перезапишет все текущие данные в приложении. Любые изменения, которые вы сделали после даты этой резервной копии,",
    "restoreBackupWarning2":
        "будут потеряны.\n\nВы уверены, что хотите восстановить эту резервную копию?",
    "sureDeleteBackup": "Вы уверены, что хотите удалить эту резервную копию?",
    "backupDate": "Дата резервной копии",
    "useTheFollowingLinkToDownloadTheBackup":
        "Используйте следующую ссылку для загрузки резервной копии",

    // advanced settings: Admins
    "admins": "Администраторы",
    "accountCreated": "Аккаунт создан",
    "editAdmin": "Редактировать администратора",
    "validEmailMustBeProvided":
        "Должен быть указан действительный адрес электронной почты",
    "password": "Пароль",
    "leaveBlankToKeepUnchanged": "Оставьте пустым, чтобы не менять",
    "updatingPassword": "Обновление пароля",
    "leaveItEmpty": "Оставьте поле пароля пустым, если не хотите его менять.",
    "newAdmin": "Новый администратор",
    "minimumPasswordLength": "Пароль не менее 10 символов",

    // advanced settings: Users
    "users": "Пользователи",
    "editUser": "Редактировать пользователя",
    "newUser": "Новый пользователь",

    // advanced settings: Permissions
    "permissions": "Разрешения пользователя",
    "usersCanAccess": "Пользователи могут получить доступ к",
    "permissionsNotice":
        "Следующие разрешения применяются к перечисленным выше пользователям и автономному доступу. Однако администраторы, такие как вы, имеют неограниченный доступ в приложении, если они не находятся в автономном режиме.",

    // advanced settings: prod tests
    "prodTests": "Производственные тесты",
    "fileStorageTest": "Тест хранилища файлов",
    "fileStorageTestDesc":
        "Используйте следующую кнопку, чтобы проверить, правильно ли работает хранилище S3.",
    "fileStorageButton": "Проверить конфигурацию S3",
    "fileStorageFail": "Конфигурация S3 не удалась",
    "fileStorageSuccess": "Конфигурация S3 работает правильно",
    "emailTest": "Тест электронной почты",
    "emailTestDesc":
        "Используйте следующую кнопку, чтобы проверить, может ли ваш сервер правильно отправлять электронные письма. Письмо, похожее на сброс пароля, должно быть доставлено на целевой адрес электронной почты.",
    "targetEmail": "Целевая электронная почта",
    "emailTestButton": "Отправить тестовое письмо",
    "emailTestFail": "Тест электронной почты не удался",
    "emailTestSuccess":
        "Письмо успешно отправлено, пожалуйста, проверьте свой почтовый ящик.",
    "fail": "Неудача",
    "success": "Успех",

    // login
    "login": "Войти",
    "resetPassword": "Сбросить пароль",
    "serverUrl": "URL сервера",
    "proceedOffline": "Работать в автономном режиме",
    "youLLGet": "Вы получите ссылку для сброса по электронной почте",
    "beenSent":
        "Инструкции по сбросу пароля отправлены, проверьте свой почтовый ящик.",

    // other
    "sureArchiveSelected":
        "Вы уверены, что хотите архивировать выбранные элементы?",
    "sureClosePanel":
        "Вы уверены, что хотите закрыть панель? Все несохраненные изменения будут потеряны.",
    "sure": "Уверены",
    "back": "Назад",
    "firstLaunchDialogTitle": "Добро пожаловать в Apexo",
    "firstLaunchDialogContent":
        "Вы успешно установили Apexo. Однако для лучшего опыта и реального использования вам нужно будет настроить несколько вещей. Отсканируйте QR-код ниже, чтобы начать.",
    "newVersionDialogTitle": "Доступна новая версия",
    "newVersionDialogContent":
        "Доступна новая версия Apexo. Пожалуйста, обновитесь до последней версии, чтобы получить лучший опыт. Отсканируйте QR-код ниже, чтобы начать.",
  };
}
