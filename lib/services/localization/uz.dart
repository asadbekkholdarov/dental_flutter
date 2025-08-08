import 'en.dart';

class Uz implements En {
  Direction $direction = Direction.ltr; // Uzbek is generally LTR
  String $name = "Oʻzbekcha";
  String $code = "uz";

  Map<String, String> dictionary = {
    // common
    "cancel": "Bekor qilish",
    "close": "Yopish",
    "save": "Saqlash",
    "reset": "Qayta tiklash",
    "continue": "Davom etish",
    "add": "Qo'shish",
    "edit": "Tahrirlash",
    "delete": "O'chirish",
    "archive": "Arxivlash",
    "restore": "Tiklash",
    "logout": "Chiqish",
    "noResultsFound": "Hech qanday natija topilmadi",
    "home": "Bosh sahifa",
    "calendar": "Kalendar",
    "gettingImages": "Rasmlar olinmoqda",

    // call
    "callLaboratory": "Laboratoriyaga qo'ng'iroq qilish",
    "callPatient": "Bemorga qo'ng'iroq qilish",
    "emailDoctor": "Doktorga elektron pochta yuborish",
    "callIssuer": "Chiqaruvchiga qo'ng'iroq qilish",

    // screens
    "settings": "Sozlamalar",
    "dashboard": "Boshqaruv paneli",
    "appointments": "Uchrashuvlar",
    "patients": "Bemorlar",
    "doctors": "Doktorlar",
    "labworks": "Rentgen",
    "statistics": "Statistika",

    // dashboard
    "admin": "Administrator",
    "fullStats": "To'liq statistika",
    "payments": "To'lovlar",
    "appointmentsToday": "Bugungi uchrashuvlar",
    "patientsToday": "Bugungi bemorlar",
    "newPatientsToday": "Bugungi yangi bemorlar",
    "paymentsMadeToday": "Bugun amalga oshirilgan to'lovlar",
    "modeAdmin": "ADMIN",
    "modeUser": "FOYDALANUVCHI",
    "modeOffline": "OFLAYN",
    "onceConnectionIsStable":
        "Ulanishingiz barqaror bo'lgach, qayta ulanish uchun yuqori o'ng burchakdagi tugmadan foydalanishingiz mumkin.",
    "unRestrictedAccess": "ilovada cheklovlarsiz kirish",
    "restrictedAccess":
        "administrator tomonidan belgilangan ba'zi ekranlarga cheklangan kirish",
    "youAreCurrentlyIn": "Siz hozirda",
    "mode": "rejimdasiz",
    "youHave": "Sizda bor",
    "hello": "Salom",

    // datatable
    "archiveSelected": "Tanlanganlarni arxivlash",
    "searchPlaceholder": "Qidirish...",
    "showHideArchived": "Arxivlanganlarni ko'rsatish/yashirish",
    "showing": "Ko'rsatilmoqda",
    "by": "Bo'yicha",
    "byTitle": "Sarlavha bo'yicha",
    "byDate": "Sana bo'yicha",
    "noItemsFound": "Hech qanday element topilmadi",
    "filter": "Filtrlash",

    // doctors
    "doctor": "Doktor",
    "newDoctor": "Yangi doktor",
    "doctorDetails": "Doktor ma'lumotlari",
    "pastAppointments": "O'tgan uchrashuvlar",
    "upcomingAppointments": "Kelgusi uchrashuvlar",
    "doctorName": "Doktor nomi",
    "doctorEmail": "Doktor elektron pochtasi",
    "dutyDays": "Navbatchilik kunlari",
    "addAppointment": "Uchrashuv qo'shish",
    "lockToUsers":
        "Faqat quyidagi foydalanuvchilar ushbu doktor ma'lumotlari va uchrashuvlarini ko'rish/tahrirlashlari mumkin",
    "noUpcomingAppointmentsForThisDoctor":
        "Kelgusi uchrashuvlar topilmadi. Yangi uchrashuv qo'shish uchun pastdagi tugmadan foydalaning.",

    // days and months
    "monday": "Dushanba",
    "tuesday": "Seshanba",
    "wednesday": "Chorshanba",
    "thursday": "Payshanba",
    "friday": "Juma",
    "saturday": "Shanba",
    "sunday": "Yakshanba",
    "january": "Yanvar",
    "february": "Fevral",
    "march": "Mart",
    "april": "Aprel",
    "may": "May",
    "june": "Iyun",
    "july": "Iyul",
    "august": "Avgust",
    "september": "Sentabr",
    "october": "Oktabr",
    "november": "Noyabr",
    "december": "Dekabr",

    // appointment card
    "appointment": "Uchrashuv",
    "patient": "Bemor",
    "photos": "Rasmlar",
    "pre-opNotes": "Muolajadan oldingi eslatmalar",
    "post-opNotes": "Muolajadan keyingi eslatmalar",
    "prescription": "Retsept",
    "pay": "To'lash",
    "paid": "To'langan",
    "price": "Narx",
    "underpaid": "Kam to'langan",
    "overpaid": "Ortiqcha to'langan",
    "fullyPaid": "To'liq to'langan",
    "paymentSummary": "To'lov xulosasi",
    "editingAppointment": "Uchrashuvni tahrirlash",
    "after": "Keyin",
    "days": "kun",
    "day": "kun",
    "isDone": "Uchrashuv yakunlandi",

    // patients
    "patientDetails": "Bemor ma'lumotlari",
    "Age": "Yosh",
    "Gender": "Jins",
    "Last visit": "Oxirgi tashrif",
    "Pay": "To'lov",
    "Total payments": "Jami to'lovlar",
    "daysAgo": "kun avval",
    "noVisits": "Tashriflar yo'q",
    "addNewPatient": "Yangi bemor qo'shish",
    "name": "Ism",
    "birthYear": "Tug'ilgan yil",
    "phone": "Telefon",
    "email": "Elektron pochta",
    "address": "Manzil",
    "notes": "Eslatmalar",
    "patientTags": "Bemor teglari",
    "male": "Erkak",
    "female": "Ayol",
    "noAppointmentsFound":
        "Ushbu bemor uchun uchrashuvlar topilmadi, yangi uchrashuv qo'shish uchun pastdagi tugmadan foydalaning.",
    "editPatient": "Bemor ma'lumotlarini tahrirlash",
    "editAppointment": "Uchrashuvni tahrirlash",
    "patientPage": "Bemor veb-sahifasi",
    "patientCanUseTheFollowing":
        "Bemor o'z uchrashuvlari, to'lovlari va rasmlariga kirish uchun quyidagi havoladan foydalanishi mumkin.",
    "printQR": "QR kodini chop etish",
    "dentalNotes": "Tish eslatmalari",
    "showPrimary": "Asosiylarni ko'rsatish",
    "showPermanent": "Doimiylarni ko'rsatish",
    "primary": "Asosiy",
    "permanent": "Doimiy",
    "lower": "Pastki",
    "upper": "Yuqori",
    "left": "Chap",
    "right": "O'ng",
    "centralIncisor": "Markaziy kesuvchi tish",
    "lateralIncisor": "Yon kesuvchi tish",
    "canine": "So'yloq tishi",
    "firstPremolar": "Birinchi kichik jag' tishi",
    "secondPremolar": "Ikkinchi kichik jag' tishi",
    "firstMolar": "Birinchi katta jag' tishi",
    "secondMolar": "Ikkinchi katta jag' tishi",
    "thirdMolar": "Uchinchi katta jag' tishi",
    "exportSelected": "Tanlanganlarni eksport qilish",
    "noPatientsSelected": "Hech qanday bemor tanlanmadi",

    // calendar (appointments)
    "allDoctors": "Barcha doktorlar",
    "noAppointmentsForThisDay": "Bu kun uchun uchrashuvlar yo'q",
    "weekAbbr": "H", // Hafta
    "twoWeeksAbbr": "2H", // 2 Hafta
    "monthAbbr": "Oy",
    "today": "Bugun",
    "newPatient": "Yangi bemor",
    "date": "Sana",
    "changeDate": "Sanani o'zgartirish",
    "changeTime": "Vaqtni o'zgartirish",
    "attention": "Diqqat",
    "doctorNotAvailable":
        "Tanlangan doktorlardan biri tanlangan sanada mavjud bo'lmasligi mumkin.",
    "time": "Vaqt",
    "preOperativeNotes": "Muolajadan oldingi eslatmalar",
    "selectDoctors": "Doktorlarni tanlash",
    "selectPatient": "Bemorni tanlash",
    "operativeDetails": "Operativ ma'lumotlar",
    "postOperativeNotes": "Muolajadan keyingi eslatmalar",
    "printPrescription": "Retseptni chop etish",
    "priceIn": "Narxi",
    "paidIn": "To'langan",
    "gallery": "Galereya",
    "link": "Havola",
    "upload": "Yuklash",
    "camera": "Kamera",
    "emptyGallery": "Galereya bo'sh",
    "noPhotos": "Hali rasm yuklanmagan.",
    "importingPhotosFromLink": "Havoladan rasmlarni import qilish",
    "useThisForm":
        "Ushbu shakldan Google Photos kabi almashilgan havolalardan yoki ushbu uchrashuvga qo'shmoqchi bo'lgan rasmlarni o'z ichiga olgan har qanday ochiq veb-sahifadan rasmlarni import qilish uchun foydalaning.",
    "error": "Xato",
    "enterLink": "Rasmlar mavjud bo'lgan URL kiriting",
    "import": "Import",

    // labworks
    "laboratory": "Rentgen",
    "month": "oy",
    "newLabwork": "Yangi Rentgen ishi",
    "labwork": "Rentgen ishi",
    "labworkTitle": "Rentgen ishi sarlavhasi",
    "orderNotes": "Izoh",
    "unpaid": "To'lanmagan",
    "noSuggestions": "Takliflar yo'q",

    // expenses
    "expense": "Xarajat",
    "expenses": "Xarajatlar",
    "receipt": "Kvitansiya",
    "title": "Sarlavha",
    "cost": "Narxi",
    "issuer": "Chiqaruvchi",
    "amount": "Miqdor",
    "amountIn": "Kirim miqdori",
    "status": "Holat",
    "due": "Muddati o'tgan",
    "receiptTitle": "Kvitansiya sarlavhasi",
    "receiptNotes": "Kvitansiya eslatmalari",
    "newReceipt": "Yangi kvitansiya",
    "receiptTags": "Kvitansiya teglari",
    "receiptItems": "Kvitansiya bandlari",
    "specificForDoctors": "Quyidagi doktorlar uchun maxsus",

    // stats
    "pickRange": "Oraliqni tanlang",
    "start": "Boshlanishi",
    "end": "Tugashi",
    "weeks": "Haftalar",
    "months": "Oylar",
    "quarters": "Choraklar",
    "years": "Yillar",
    "appointmentsPer": "Uchrashuvlar bo'yicha",
    "paymentsAndExpensesPer": "To'lovlar va xarajatlar bo'yicha",
    "newPatientsPer": "Yangi bemorlar bo'yicha",
    "doneMissedPer": "Bajarilgan va o'tkazib yuborilganlar bo'yicha",
    "timeOfDay": "Kun vaqti",
    "dayOfWeek": "Hafta kuni",
    "dayOfMonth": "Oy kuni",
    "monthOfYear": "Yil oyi",
    "patientsGender": "Bemorlar jinsi",
    "total": "Jami",
    "in_Duration_": "davomida",
    "acquiredPatientsIn": "Olingan bemorlar",
    "doneAndMissedAppointmentsIn":
        "Bajarilgan va o'tkazib yuborilgan uchrashuvlar",
    "distributionOfAppointments": "Uchrashuvlarning taqsimlanishi",
    "maleAndFemalePatients": "Erkak va ayol bemorlar",
    "done": "bajarildi",
    "missed": "o'tkazib yuborildi",

    // settings
    "currency": "Valyuta",
    "currency_desc":
        "Ilova bo'ylab ishlatiladigan valyuta kodi (masalan, USD, EUR, IQD, UZS).",
    "phone_desc":
        "Telefon raqami bosma nusxalarda va bemor veb-sahifasida ko'rsatiladi.",
    "prescriptionFooter": "Retsept pastki qismi",
    "prescriptionFooter_desc": "Bu matn retseptning oxirida ko'rsatiladi.",
    "language": "Til",
    "language_desc":
        "Menyular, tugmalar va ilovada ishlatiladigan ma'lumotlar uchun interfeys tili.",
    "startingDayOfWeek": "Haftaning boshlanish kuni",
    "startingDayOfWeek_desc": "Hafta boshlanadigan kun.",
    "dateFormat": "Sana formati",
    "dateFormat_desc": "Bu format sanalarni ko'rsatishda qo'llaniladi.",
    "cacheReset": "Keshni qayta tiklash",
    "cacheReset_desc":
        "Ilova keshini, rasmlardan tashqari, qayta tiklash uchun quyidagi tugmadan foydalanishingiz mumkin. Bu boshqa qurilmalar bilan sinxronlashda yuzaga kelgan ba'zi muammolarni hal qilishga yordam berishi mumkin.",
    "month/day/year": "Oy/Kun/Yil",
    "day/month/year": "Kun/Oy/Yil",
    "appliesTo": "Qo'llaniladi",
    "all": "Hammasi",
    "you": "siz",
    "initialSynchronization": "Dastlabki sinxronlash",
    "synchronizing": "Sinxronlanmoqda",
    "clearingLocalData": "Mahalliy ma'lumotlar tozalanmoqda",

    // advanced settings: Backups
    "backups": "Zaxira nusxalari",
    "refresh": "Yangilash",
    "download": "Yuklab olish",
    "createNew": "Yangi yaratish",
    "restoreBackup": "Zaxira nusxasini tiklash",
    "restoreBackupWarning1":
        "Ushbu zaxira nusxasini tiklash ilovadagi barcha joriy ma'lumotlarni o'chirib tashlaydi. Ushbu zaxira nusxasi sanasidan keyin kiritgan har qanday o'zgarishlar",
    "restoreBackupWarning2":
        "yo'qoladi.\n\nUshbu zaxira nusxasini tiklashni xohlaysizmi?",
    "sureDeleteBackup": "Ushbu zaxira nusxasini o'chirishni xohlaysizmi?",
    "backupDate": "Zaxira nusxasi sanasi",
    "useTheFollowingLinkToDownloadTheBackup":
        "Zaxira nusxasini yuklab olish uchun quyidagi havoladan foydalaning",

    // advanced settings: Admins
    "admins": "Administratorlar",
    "accountCreated": "Hisob yaratildi",
    "editAdmin": "Administratorni tahrirlash",
    "validEmailMustBeProvided":
        "To'g'ri elektron pochta manzili ko'rsatilishi kerak",
    "password": "Parol",
    "leaveBlankToKeepUnchanged": "O'zgarishsiz qoldirish uchun bo'sh qoldiring",
    "updatingPassword": "Parol yangilanmoqda",
    "leaveItEmpty":
        "Agar parolni o'zgartirishni xohlamasangiz, parol maydonini bo'sh qoldiring.",
    "newAdmin": "Yangi administrator",
    "minimumPasswordLength":
        "Parol kamida 10 ta belgidan iborat bo'lishi kerak",

    // advanced settings: Users
    "users": "Foydalanuvchilar",
    "editUser": "Foydalanuvchini tahrirlash",
    "newUser": "Yangi foydalanuvchi",

    // advanced settings: Permissions
    "permissions": "Foydalanuvchi ruxsatnomalari",
    "usersCanAccess": "Foydalanuvchilar kirishi mumkin",
    "permissionsNotice":
        "Quyidagi ruxsatnomalar yuqorida sanab o'tilgan foydalanuvchilar va oflayn kirish uchun qo'llaniladi. Biroq, siz kabi administratorlar, oflayn bo'lmaguncha, ilovaga cheklovlarsiz kirish huquqiga ega.",

    // advanced settings: prod tests
    "prodTests": "Ishlab chiqarish testlari",
    "fileStorageTest": "Fayl saqlash testi",
    "fileStorageTestDesc":
        "S3 saqlash joyining to'g'ri ishlayotganligini tekshirish uchun quyidagi tugmadan foydalaning.",
    "fileStorageButton": "S3 konfiguratsiyasini tekshirish",
    "fileStorageFail": "S3 konfiguratsiyasi muvaffaqiyatsiz tugadi",
    "fileStorageSuccess": "S3 konfiguratsiyasi to'g'ri ishlamoqda",
    "emailTest": "Elektron pochta testi",
    "emailTestDesc":
        "Serveringiz elektron pochta xabarlarini to'g'ri yuborishini tekshirish uchun quyidagi tugmadan foydalaning. Parolni tiklashga o'xshash elektron pochta maqsadli elektron pochta manziliga yetkazilishi kerak.",
    "targetEmail": "Maqsadli elektron pochta",
    "emailTestButton": "Sinov elektron pochtasini yuborish",
    "emailTestFail": "Elektron pochta testi muvaffaqiyatsiz tugadi",
    "emailTestSuccess":
        "Elektron pochta muvaffaqiyatli yuborildi, iltimos, pochtangizni tekshiring.",
    "fail": "Muvaffaqiyatsizlik",
    "success": "Muvaffaqiyat",

    // login
    "login": "Kirish",
    "resetPassword": "Parolni tiklash",
    "serverUrl": "Server URL",
    "proceedOffline": "Oflayn rejimda davom etish",
    "youLLGet": "Tiklash havolasini elektron pochta orqali olasiz",
    "beenSent":
        "Parolni tiklash bo'yicha ko'rsatmalar yuborildi, pochtangizni tekshiring.",

    // other
    "sureArchiveSelected": "Tanlangan elementlarni arxivlashni xohlaysizmi?",
    "sureClosePanel":
        "Panelni yopishni xohlaysizmi? Saqlanmagan o'zgarishlar yo'qoladi.",
    "sure": "Ha",
    "back": "Orqaga",
    "firstLaunchDialogTitle": "Apexoga xush kelibsiz",
    "firstLaunchDialogContent":
        "Apexoni muvaffaqiyatli o'rnatdingiz. Biroq, yaxshiroq tajriba va haqiqiy foydalanish uchun siz bir nechta narsalarni sozlashishingiz kerak bo'ladi. Boshlash uchun pastdagi QR kodini skanerlang.",
    "newVersionDialogTitle": "Yangi versiya mavjud",
    "newVersionDialogContent":
        "Apexoning yangi versiyasi mavjud. Eng yaxshi tajribaga ega bo'lish uchun iltimos, eng so'nggi versiyaga yangilang. Boshlash uchun pastdagi QR kodini skanerlang.",
  };
}
