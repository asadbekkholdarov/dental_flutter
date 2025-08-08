enum Direction {
  ltr,
  rtl,
}

class En {
  Direction $direction = Direction.ltr;
  String $name = "English";
  String $code = "en";

  Map<String, String> dictionary = {
    // common
    "cancel": "Cancel",
    "close": "Close",
    "save": "Save",
    "reset": "Reset",
    "continue": "Continue",
    "add": "Add",
    "edit": "Edit",
    "delete": "Delete",
    "archive": "Archive",
    "restore": "Restore",
    "logout": "Logout",
    "noResultsFound": "No results found",
    "home": "Home",
    "calendar": "Calendar",
    "gettingImages": "Getting images",

    // call
    "callLaboratory": "Call Laboratory",
    "callPatient": "Call Patient",
    "emailDoctor": "Email Doctor",
    "callIssuer": "Call Issuer",

    // screens
    "settings": "Settings",
    "dashboard": "Dashboard",
    "appointments": "Appointments",
    "patients": "Patients",
    "doctors": "Doctors",
    "labworks": "Labworks",
    "statistics": "Statistics",

    // dashboard
    "admin": "Admin",
    "fullStats": "Full stats",
    "payments": "Payments",
    "appointmentsToday": "Appointments today",
    "patientsToday": "Patients today",
    "newPatientsToday": "New patients today",
    "paymentsMadeToday": "Payments made today",
    "modeAdmin": "ADMIN",
    "modeUser": "USER",
    "modeOffline": "OFFLINE",
    "onceConnectionIsStable":
        "Once your connection becomes stable you can use the button in the top right corner to reconnect.",
    "unRestrictedAccess": "unrestricted access in the application",
    "restrictedAccess":
        "restricted access to some screens as dictated by the administrator",
    "youAreCurrentlyIn": "You are currently in",
    "mode": "mode",
    "youHave": "You have",
    "hello": "Hello",

    // datatable
    "archiveSelected": "Archive Selected",
    "searchPlaceholder": "Search...",
    "showHideArchived": "Show/Hide Archived",
    "showing": "Showing",
    "by": "By",
    "byTitle": "By Title",
    "byDate": "By Date",
    "noItemsFound": "No items found",
    "filter": "Filter",

    // doctors
    "doctor": "Doctor",
    "newDoctor": "New Doctor",
    "doctorDetails": "Doctor Details",
    "pastAppointments": "Past appointments",
    "upcomingAppointments": "Upcoming appointments",
    "doctorName": "Doctor name",
    "doctorEmail": "Doctor email",
    "dutyDays": "Duty days",
    "addAppointment": "Add Appointment",
    "lockToUsers":
        "Only the following users can view/edit this doctor's data and appointments",
    "noUpcomingAppointmentsForThisDoctor":
        "No upcoming appointments found. Use the button below to register new one",

    // days and months
    "monday": "Monday",
    "tuesday": "Tuesday",
    "wednesday": "Wednesday",
    "thursday": "Thursday",
    "friday": "Friday",
    "saturday": "Saturday",
    "sunday": "Sunday",
    "january": "January",
    "february": "February",
    "march": "March",
    "april": "April",
    "may": "May",
    "june": "June",
    "july": "July",
    "august": "August",
    "september": "September",
    "october": "October",
    "november": "November",
    "december": "December",

    // appointment card
    "appointment": "Appointment",
    "patient": "Patient",
    "photos": "Photos",
    "pre-opNotes": "Pre-op notes",
    "post-opNotes": "Post-op notes",
    "prescription": "Prescription",
    "pay": "Pay",
    "paid": "Paid",
    "price": "Price",
    "underpaid": "Underpaid",
    "overpaid": "Overpaid",
    "fullyPaid": "Fully paid",
    "paymentSummary": "Payment summary",
    "editingAppointment": "Editing Appointment",
    "after": "After",
    "days": "days",
    "day": "day",
    "isDone": "Appointment is done",

    // patients
    "patientDetails": "Patient Details",
    "age": "Age",
    "gender": "Gender",
    "last visit": "Last visit",
    "total payments": "Total payments",
    "daysAgo": "days ago",
    "noVisits": "No visits",
    "addNewPatient": "Add new patient",
    "name": "Name",
    "birthYear": "Birth year",
    "phone": "Phone",
    "email": "Email",
    "address": "Address",
    "notes": "Notes",
    "patientTags": "Patient tags",
    "male": "Male",
    "female": "Female",
    "noAppointmentsFound":
        "No appointments found for this patient, use the button below to add new appointment.",
    "editPatient": "Edit Patient",
    "editAppointment": "Edit Appointment",
    "patientPage": "Patient Web Page",
    "patientCanUseTheFollowing":
        "Patient can use the following link to access his appointments, payments and photos.",
    "printQR": "Print QR Code",
    "dentalNotes": "Dental Notes",
    "showPrimary": "Show Primary",
    "showPermanent": "Show Permanent",
    "primary": "Primary",
    "permanent": "Permanent",
    "lower": "Lower",
    "upper": "Upper",
    "left": "Left",
    "right": "Right",
    "centralIncisor": "Central Incisor",
    "lateralIncisor": "Lateral Incisor",
    "canine": "Canine",
    "firstPremolar": "First Premolar",
    "secondPremolar": "Second Premolar",
    "firstMolar": "First Molar",
    "secondMolar": "Second Molar",
    "thirdMolar": "Third Molar",
    "exportSelected": "Export Selected",
    "noPatientsSelected": "No patients selected",

    // calendar (appointments)
    "allDoctors": "All doctors",
    "noAppointmentsForThisDay": "No appointments for this day",
    "weekAbbr": "W",
    "twoWeeksAbbr": "2W",
    "monthAbbr": "M",
    "today": "Today",
    "newPatient": "New Patient",
    "date": "Date",
    "changeDate": "Change Date",
    "changeTime": "Change Time",
    "attention": "Attention",
    "doctorNotAvailable":
        "One of the selected doctors might not be available on the selected date.",
    "time": "Time",
    "preOperativeNotes": "Pre-operative notes",
    "selectDoctors": "Select Doctors",
    "selectPatient": "Select Patient",
    "operativeDetails": "Operative Details",
    "postOperativeNotes": "Post-operative notes",
    "printPrescription": "Print Prescription",
    "priceIn": "Price in",
    "paidIn": "Paid in",
    "gallery": "Gallery",
    "link": "Link",
    "upload": "Upload",
    "camera": "Camera",
    "emptyGallery": "Empty gallery",
    "noPhotos": "No photos has been uploaded yet.",
    "importingPhotosFromLink": "Importing photos from link",
    "useThisForm":
        "Use this form to import photos from share links, like google photos, or any accessible web page that contains photos you'd like to add to this appointment.",
    "error": "Error",
    "enterLink": "Enter a URL that contains photos",
    "import": "Import",

    // labworks
    "laboratory": "Laboratory",
    "month": "month",
    "newLabwork": "New Labwork",
    "labwork": "labwork",
    "labworkTitle": "Labwork title",
    "orderNotes": "Order notes",
    "unpaid": "Unpaid",
    "noSuggestions": "No suggestions",

    // expenses
    "expense": "Expense",
    "expenses": "Expenses",
    "receipt": "Receipt",
    "title": "Title",
    "cost": "Cost",
    "issuer": "Issuer",
    "amount": "Amount",
    "amountIn": "Amount in",
    "status": "Status",
    "due": "Due",
    "receiptTitle": "Receipt title",
    "receiptNotes": "Receipt notes",
    "newReceipt": "New receipt",
    "receiptTags": "Receipt tags",
    "receiptItems": "Receipt items",
    "specificForDoctors": "Specific for the following doctors",

    // stats
    "pickRange": "Pick range",
    "start": "Start",
    "end": "End",
    "weeks": "Weeks",
    "months": "Months",
    "quarters": "Quarters",
    "years": "Years",
    "appointmentsPer": "Appointments per",
    "paymentsAndExpensesPer": "Payments and expenses per",
    "newPatientsPer": "New patients per",
    "doneMissedPer": "Done & Missed per",
    "timeOfDay": "Time of day",
    "dayOfWeek": "Day of week",
    "dayOfMonth": "Day of month",
    "monthOfYear": "Month of year",
    "patientsGender": "Patients gender",
    "total": "Total",
    "in_Duration_": "in",
    "acquiredPatientsIn": "Acquired patients in",
    "doneAndMissedAppointmentsIn": "Done and missed appointments in",
    "distributionOfAppointments": "Distribution of appointments",
    "maleAndFemalePatients": "Male and female patients",
    "done": "done",
    "missed": "missed",

    // settings
    "currency": "Currency",
    "currency_desc":
        "Currency code to be used across the application (e.g. USD, EUR, IQD, UZS).",
    "phone_desc":
        "The phone number will be displayed in prints and patients web page.",
    "prescriptionFooter": "Prescription footer",
    "prescriptionFooter_desc":
        "This text will be displayed at the bottom of the prescription.",
    "language": "Language",
    "language_desc":
        "The interface language for the menus, buttons, and info used across the app.",
    "startingDayOfWeek": "Starting day of week",
    "startingDayOfWeek_desc": "The day of the week that the week starts on.",
    "dateFormat": "Date format",
    "dateFormat_desc":
        "This format will be used to display dates where applicable.",
    "cacheReset": "Cache reset",
    "cacheReset_desc":
        "Using the button below, you can delete locally saved data (except for images), this would solve some issues with synchronization if you're facing any.",
    "month/day/year": "Month/Day/Year",
    "day/month/year": "Day/Month/Year",
    "appliesTo": "Applies to",
    "all": "All",
    "you": "you",
    "initialSynchronization": "Initial synchronization",
    "synchronizing": "Synchronizing",
    "clearingLocalData": "Clearing local data",

    // advanced settings: Backups
    "backups": "Backups",
    "refresh": "Refresh",
    "download": "Download",
    "createNew": "Create new",
    "restoreBackup": "Restore backup",
    "restoreBackupWarning1":
        "Restoring this backup will overwrite all data in the app currently. Any changes that you have made after the date of this backup",
    "restoreBackupWarning2":
        "will be lost.\n\nAre you sure you want to restore this backup?",
    "sureDeleteBackup": "Are you sure you want to delete this backup",
    "backupDate": "Backup date",
    "useTheFollowingLinkToDownloadTheBackup":
        "Use the following link to download the backup",

    // advanced settings: Admins
    "admins": "Administrators",
    "accountCreated": "Account created",
    "editAdmin": "Edit admin",
    "validEmailMustBeProvided": "A valid email must be provided",
    "password": "Password",
    "leaveBlankToKeepUnchanged": "Leave blank to keep unchanged",
    "updatingPassword": "Updating password",
    "leaveItEmpty":
        "Leave the password field empty if you don't want to change it.",
    "newAdmin": "New admin",
    "minimumPasswordLength": "Minimum 10 characters password",

    // advanced settings: Users
    "users": "Users",
    "editUser": "Edit user",
    "newUser": "New user",

    // advanced settings: Permissions
    "permissions": "User Permissions",
    "usersCanAccess": "Users can access",
    "permissionsNotice":
        "The following permissions apply to the users listed above and offline access. However, administrators like you, have unrestricted access in the application, unless you're offline.",

    // advanced settings: prod tests
    "prodTests": "Production tests",
    "fileStorageTest": "File storage test",
    "fileStorageTestDesc":
        "Use the following button to test whether S3 storage is working properly.",
    "fileStorageButton": "Test S3 setup",
    "fileStorageFail": "S3 setup failed",
    "fileStorageSuccess": "S3 setup is working properly",
    "emailTest": "Email test",
    "emailTestDesc":
        "Use the following button to test whether your server can send emails properly. A password-reset-like email should be delivered to the target email address.",
    "targetEmail": "Target email",
    "emailTestButton": "Send test email",
    "emailTestFail": "Email test failed",
    "emailTestSuccess": "Email sent successfully, please check your inbox.",
    "fail": "Fail",
    "success": "Success",

    // login
    "login": "Login",
    "resetPassword": "Reset password",
    "serverUrl": "Server URL",
    "proceedOffline": "Proceed offline",
    "youLLGet": "Get reset link by email",
    "beenSent":
        "Password reset instructions have been sent to you, check your inbox.",

    // other
    "sureArchiveSelected":
        "Are you sure you want to archive the selected items?",
    "sureClosePanel":
        "Are you sure you want to close this panel? Any unsaved changes will be lost.",
    "sure": "Sure",
    "back": "Back",
    "firstLaunchDialogTitle": "Welcome to Apexo",
    "firstLaunchDialogContent":
        "You have successfully installed Apexo. However, for better experience and for real-world use, you'll have a couple of things to configure. Scan the QR code below to get started.",
    "newVersionDialogTitle": "New version available",
    "newVersionDialogContent":
        "A new version of Apexo is available. Please update to the latest version to get the best experience. Scan the QR code below to get started.",
  };
}
