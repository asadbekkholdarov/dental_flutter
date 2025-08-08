import 'en.dart';

class Es implements En {
  Direction $direction = Direction.ltr;
  String $name = "Español";
  String $code = "es";

  Map<String, String> dictionary = {
    // common
    "cancel": "Cancelar",
    "close": "Cerrar",
    "save": "Guardar",
    "reset": "Restablecer",
    "continue": "Continuar",
    "add": "Añadir",
    "edit": "Editar",
    "delete": "Eliminar",
    "archive": "Archivar",
    "restore": "Restaurar",
    "logout": "Cerrar sesión",
    "noResultsFound": "No se encontraron resultados",
    "home": "Inicio",
    "calendar": "Calendario",
    "gettingImages": "Obteniendo imágenes",

    // call
    "callLaboratory": "Llamar al Laboratorio",
    "callPatient": "Llamar al Paciente",
    "emailDoctor": "Enviar correo al Doctor",
    "callIssuer": "Llamar al Emisor",

    // screens
    "settings": "Configuraciones",
    "dashboard": "Tablero",
    "appointments": "Citas",
    "patients": "Pacientes",
    "doctors": "Doctores",
    "labworks": "trabajos de lab.",
    "statistics": "Estadísticas",

    // dashboard
    "admin": "Administrador",
    "fullStats": "Estadísticas completas",
    "payments": "Pagos",
    "appointmentsToday": "Citas hoy",
    "patientsToday": "Pacientes hoy",
    "newPatientsToday": "Nuevos pacientes hoy",
    "paymentsMadeToday": "Pagos realizados hoy",
    "modeAdmin": "ADMIN",
    "modeUser": "USUARIO",
    "modeOffline": "FUERA DE LÍNEA",
    "onceConnectionIsStable":
        "Una vez que tu conexión sea estable, puedes usar el botón en la esquina superior derecha para reconectar.",
    "unRestrictedAccess": "acceso sin restricciones en la aplicación",
    "restrictedAccess":
        "acceso restringido a algunas pantallas según lo dictado por el administrador",
    "youAreCurrentlyIn": "Actualmente estás en",
    "mode": "modo",
    "youHave": "Tienes",
    "hello": "Hola",

    // datatable
    "archiveSelected": "Archivar seleccionados",
    "searchPlaceholder": "Buscar...",
    "showHideArchived": "Mostrar/Ocultar archivados",
    "showing": "Mostrando",
    "by": "Por",
    "byTitle": "Por título",
    "byDate": "Por fecha",
    "noItemsFound": "No se encontraron elementos",
    "filter": "Filtrar",

    // doctors
    "doctor": "Doctor",
    "newDoctor": "Nuevo doctor",
    "doctorDetails": "Detalles del doctor",
    "pastAppointments": "Citas pasadas",
    "upcomingAppointments": "Próximas citas",
    "doctorName": "Nombre del doctor",
    "doctorEmail": "Correo del doctor",
    "dutyDays": "Días de servicio",
    "addAppointment": "Añadir cita",
    "lockToUsers":
        "Solo los siguientes usuarios pueden ver/editar los datos y citas de este doctor",
    "noUpcomingAppointmentsForThisDoctor":
        "No se econtraron citas próximas. Use el botón abajo para añadir una nueva cita.",

    // days and months
    "monday": "Lunes",
    "tuesday": "Martes",
    "wednesday": "Miércoles",
    "thursday": "Jueves",
    "friday": "Viernes",
    "saturday": "Sábado",
    "sunday": "Domingo",
    "january": "Enero",
    "february": "Febrero",
    "march": "Marzo",
    "april": "Abril",
    "may": "Mayo",
    "june": "Junio",
    "july": "Julio",
    "august": "Agosto",
    "september": "Septiembre",
    "october": "Octubre",
    "november": "Noviembre",
    "december": "Diciembre",

    // appointment card
    "appointment": "Cita",
    "patient": "Paciente",
    "photos": "Fotos",
    "pre-opNotes": "Notas preoperatorias",
    "post-opNotes": "Notas postoperatorias",
    "prescription": "Receta",
    "pay": "Pagar",
    "paid": "Pagado",
    "price": "Precio",
    "underpaid": "Insuficientemente pagado",
    "overpaid": "Excesivamente pagado",
    "fullyPaid": "Completamente pagado",
    "paymentSummary": "Resumen de pagos",
    "editingAppointment": "Editando cita",
    "after": "Después",
    "days": "días",
    "day": "día",
    "isDone": "La cita está completada",

    // patients
    "patientDetails": "Detalles del paciente",
    "age": "Edad",
    "gender": "Género",
    "last visit": "Última visita",
    "total payments": "Pagos totales",
    "daysAgo": "días atrás",
    "noVisits": "Sin visitas",
    "addNewPatient": "Añadir nuevo paciente",
    "name": "Nombre",
    "birthYear": "Año de nacimiento",
    "phone": "Teléfono",
    "email": "Correo electrónico",
    "address": "Dirección",
    "notes": "Notas",
    "patientTags": "Etiquetas del paciente",
    "male": "Masculino",
    "female": "Femenino",
    "noAppointmentsFound":
        "No se encontraron citas para este paciente, utiliza el botón de abajo para agregar una nueva cita.",
    "editPatient": "Editar paciente",
    "editAppointment": "Editar cita",
    "patientPage": "Página web del paciente",
    "patientCanUseTheFollowing":
        "El paciente puede usar el siguiente enlace para acceder a sus citas, pagos y fotos.",
    "printQR": "Imprimir código QR",
    "dentalNotes": "Notas dentales",
    "showPrimary": "Mostrar principal",
    "showPermanent": "Mostrar permanente",
    "primary": "Principal",
    "permanent": "Permanente",
    "lower": "Inferior",
    "upper": "Superior",
    "left": "Izquierda",
    "right": "Derecha",
    "centralIncisor": "Incisivo central",
    "lateralIncisor": "Incisivo lateral",
    "canine": "Canino",
    "firstPremolar": "Primer premolar",
    "secondPremolar": "Segundo premolar",
    "firstMolar": "Primer molar",
    "secondMolar": "Segundo molar",
    "thirdMolar": "Tercer molar",
    "exportSelected": "Exportar seleccionados",
    "noPatientsSelected": "No se han seleccionado pacientes",

    // calendar (appointments)
    "allDoctors": "Todos los doctores",
    "noAppointmentsForThisDay": "No hay citas para este día",
    "weekAbbr": "S",
    "twoWeeksAbbr": "2S",
    "monthAbbr": "M",
    "today": "Hoy",
    "newPatient": "Nuevo paciente",
    "date": "Fecha",
    "changeDate": "Cambiar fecha",
    "changeTime": "Cambiar hora",
    "attention": "Atención",
    "doctorNotAvailable":
        "Uno de los doctores seleccionados podría no estar disponible en la fecha seleccionada.",
    "time": "Hora",
    "preOperativeNotes": "Notas preoperatorias",
    "selectDoctors": "Seleccionar doctores",
    "selectPatient": "Seleccionar paciente",
    "operativeDetails": "Detalles operativos",
    "postOperativeNotes": "Notas postoperatorias",
    "printPrescription": "Imprimir receta",
    "priceIn": "Precio en",
    "paidIn": "Pagado en",
    "gallery": "Galería",
    "link": "Enlace",
    "upload": "Subir",
    "camera": "Cámara",
    "emptyGallery": "Galería vacía",
    "noPhotos": "No se han subido fotos todavía.",
    "importingPhotosFromLink": "Importando fotos desde el enlace",
    "useThisForm":
        "Usa este formulario para importar fotos desde enlaces compartidos, como Google Fotos, o cualquier página web accesible que contenga fotos que desees añadir a esta cita.",
    "error": "Error",
    "enterLink": "Ingresa una URL que contenga fotos",
    "import": "Importar",

    // labworks
    "laboratory": "Laboratorio",
    "month": "mes",
    "newLabwork": "Nuevo trabajo de laboratorio",
    "labwork": "trabajo de laboratorio",
    "labworkTitle": "Título del trabajo de laboratorio",
    "orderNotes": "Notas del pedido",
    "unpaid": "No pagado",
    "noSuggestions": "Sin sugerencias",

    // expenses
    "expense": "Gasto",
    "expenses": "Gastos",
    "receipt": "Recibo",
    "title": "Título",
    "cost": "Costo",
    "issuer": "Emisor",
    "amount": "Cantidad",
    "amountIn": "Cantidad entrando",
    "status": "Estado",
    "due": "Vencido",
    "receiptTitle": "Título del recibo",
    "receiptNotes": "Notas del recibo",
    "newReceipt": "Nuevo recibo",
    "receiptTags": "Etiquetas del recibo",
    "receiptItems": "Artículos del recibo",
    "specificForDoctors": "Específico para los doctores siguientes",

    // stats
    "pickRange": "Seleccionar rango",
    "start": "Inicio",
    "end": "Fin",
    "weeks": "Semanas",
    "months": "Meses",
    "quarters": "Trimestres",
    "years": "Años",
    "appointmentsPer": "Citas por",
    "paymentsAndExpensesPer": "Pagos y gastos por",
    "newPatientsPer": "Nuevos pacientes por",
    "doneMissedPer": "Realizadas y perdidas por",
    "timeOfDay": "Hora del día",
    "dayOfWeek": "Día de la semana",
    "dayOfMonth": "Día del mes",
    "monthOfYear": "Mes del año",
    "patientsGender": "Género de los pacientes",
    "total": "Total",
    "in_Duration_": "en",
    "acquiredPatientsIn": "Pacientes adquiridos en",
    "doneAndMissedAppointmentsIn": "Citas realizadas y perdidas en",
    "distributionOfAppointments": "Distribución de citas",
    "maleAndFemalePatients": "Pacientes masculinos y femeninos",
    "done": "realizado",
    "missed": "perdido",

    // settings
    "currency": "Moneda",
    "currency_desc":
        "Código de moneda a usar en toda la aplicación (p. ej., USD, EUR, IQD).",
    "phone_desc":
        "El número de teléfono se mostrará en impresiones y en la página web del paciente.",
    "prescriptionFooter": "Pie de página de la receta",
    "prescriptionFooter_desc": "Este texto se mostrará al final de la receta.",
    "language": "Idioma",
    "language_desc":
        "El idioma de la interfaz para los menús, botones e información usada en toda la aplicación.",
    "startingDayOfWeek": "Primer día de la semana",
    "startingDayOfWeek_desc": "El día de la semana en que comienza la semana.",
    "dateFormat": "Formato de fecha",
    "dateFormat_desc":
        "Este formato se usará para mostrar fechas cuando aplique.",
    "cacheReset": "Reiniciar caché",
    "cacheReset_desc":
        "Puedes usar el siguiente botón para reiniciar el caché de la aplicación, excepto las imágenes. Esto puede ayudar a resolver algunos problemas que podrías estar teniendo al sincronizar con otros dispositivos.",
    "month/day/year": "Mes/Día/Año",
    "day/month/year": "Día/Mes/Año",
    "appliesTo": "Aplica a",
    "all": "Todos",
    "you": "tú",
    "initialSynchronization": "Sincronización inicial",
    "synchronizing": "Sincronizando",
    "clearingLocalData": "Limpiando datos locales",

    // advanced settings: Backups
    "backups": "Copias de seguridad",
    "refresh": "Actualizar",
    "download": "Descargar",
    "createNew": "Crear nueva",
    "restoreBackup": "Restaurar copia de seguridad",
    "restoreBackupWarning1":
        "Restaurar esta copia de seguridad sobrescribirá todos los datos actuales en la aplicación. Cualquier cambio que hayas hecho después de la fecha de esta copia de seguridad",
    "restoreBackupWarning2":
        "se perderá.\n\n¿Estás seguro de que deseas restaurar esta copia de seguridad?",
    "sureDeleteBackup":
        "¿Estás seguro de que deseas eliminar esta copia de seguridad?",
    "backupDate": "Fecha de la copia de seguridad",
    "useTheFollowingLinkToDownloadTheBackup":
        "Usa el siguiente enlace para descargar la copia de seguridad",

    // advanced settings: Admins
    "admins": "Administradores",
    "accountCreated": "Cuenta creada",
    "editAdmin": "Editar administrador",
    "validEmailMustBeProvided":
        "Debe proporcionarse un correo electrónico válido",
    "password": "Contraseña",
    "leaveBlankToKeepUnchanged": "Deja en blanco para mantener sin cambios",
    "updatingPassword": "Actualizando contraseña",
    "leaveItEmpty": "Deja el campo de contraseña vacío si no deseas cambiarlo.",
    "newAdmin": "Nuevo administrador",
    "minimumPasswordLength": "Contraseña de al menos 10 caracteres",

    // advanced settings: Users
    "users": "Usuarios",
    "editUser": "Editar usuario",
    "newUser": "Nuevo usuario",

    // advanced settings: Permissions
    "permissions": "Permisos de usuario",
    "usersCanAccess": "Los usuarios pueden acceder a",
    "permissionsNotice":
        "Los siguientes permisos se aplican a los usuarios listados arriba y al acceso fuera de línea. Sin embargo, los administradores como tú, tienen acceso sin restricciones en la aplicación, a menos que estén fuera de línea.",

    // advanced settings: prod tests
    "prodTests": "Pruebas de producción",
    "fileStorageTest": "Prueba de almacenamiento de archivos",
    "fileStorageTestDesc":
        "Usa el siguiente botón para probar si el almacenamiento S3 está funcionando correctamente.",
    "fileStorageButton": "Probar configuración S3",
    "fileStorageFail": "La configuración de S3 falló",
    "fileStorageSuccess":
        "La configuración de S3 está funcionando correctamente",
    "emailTest": "Prueba de correo",
    "emailTestDesc":
        "Usa el siguiente botón para probar si tu servidor puede enviar correos electrónicos correctamente. Un correo parecido a una reestablecimiento de contraseña debería ser entregado a la dirección de correo objetivo.",
    "targetEmail": "Correo objetivo",
    "emailTestButton": "Enviar correo de prueba",
    "emailTestFail": "La prueba de correo falló",
    "emailTestSuccess":
        "Correo enviado exitosamente, por favor revisa tu bandeja de entrada.",
    "fail": "Fallar",
    "success": "Éxito",

    // login
    "login": "Iniciar sesión",
    "resetPassword": "Restablecer contraseña",
    "serverUrl": "URL del servidor",
    "proceedOffline": "Proceder fuera de línea",
    "youLLGet": "Obtendrás el enlace de restablecimiento por correo",
    "beenSent":
        "Instrucciones para restablecer la contraseña han sido enviadas, revisa tu bandeja de entrada.",

    // other
    "sureArchiveSelected":
        "¿Estás seguro de que deseas archivar los elementos seleccionados?",
    "sureClosePanel":
        "¿Estás seguro de que deseas cerrar el panel? Todos los cambios no guardados se perderán.",
    "sure": "Seguro",
    "back": "Regresar",
    "firstLaunchDialogTitle": "Bienvenido a Apexo",
    "firstLaunchDialogContent":
        "Has instalado Apexo exitosamente. Sin embargo, para una mejor experiencia y para uso real, tendrás un par de cosas que configurar. Escanea el código QR de abajo para comenzar.",
    "newVersionDialogTitle": "Nueva versión disponible",
    "newVersionDialogContent":
        "Una nueva versión de Apexo está disponible. Por favor actualiza a la última versión para obtener la mejor experiencia. Escanea el código QR de abajo para comenzar.",
  };
}
