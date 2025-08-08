import 'package:apexo/core/model.dart';
import 'package:apexo/services/archived.dart';
import 'package:apexo/services/launch.dart';
import 'package:apexo/utils/encode.dart';
import 'package:apexo/services/localization/locale.dart';
import 'package:apexo/services/login.dart';
import 'package:apexo/features/appointments/appointment_model.dart';
import 'package:apexo/features/appointments/appointments_store.dart';

class Patient extends Model {
  List<Appointment>? _allAppointmentsCached;
  List<Appointment> get allAppointments {
    return _allAppointmentsCached ??= (appointments.byPatient[id]?["all"] ?? [])
        .where((appointment) => appointment.archived != true || showArchived())
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }

  List<Appointment>? _doneAppointmentsCached;
  List<Appointment> get doneAppointments {
    return _doneAppointmentsCached ??= (appointments.byPatient[id]?["done"] ??
            [])
        .where((appointment) => appointment.archived != true || showArchived())
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }

  List<Appointment> get upcomingAppointments {
    return (appointments.byPatient[id]?["upcoming"] ?? [])
        .where((appointment) => appointment.archived != true || showArchived())
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }

  List<Appointment> get pastAppointments {
    return (appointments.byPatient[id]?["past"] ?? [])
        .where((appointment) => appointment.archived != true || showArchived())
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }

  int get age {
    return DateTime.now().year - birth;
  }

  double get paymentsMade {
    return doneAppointments.fold(0.0, (value, element) => value + element.paid);
  }

  double get pricesGiven {
    return doneAppointments.fold(
        0.0, (value, element) => value + element.price);
  }

  bool get overPaid {
    return paymentsMade > pricesGiven;
  }

  bool get fullPaid {
    return paymentsMade == pricesGiven;
  }

  bool get underPaid {
    return paymentsMade < pricesGiven;
  }

  double get outstandingPayments {
    return pricesGiven - paymentsMade;
  }

  int? get daysSinceLastAppointment {
    if (doneAppointments.isEmpty) return null;
    return DateTime.now().difference(doneAppointments.last.date).inDays;
  }

  @override
  get avatar {
    // https://person.alisaleem.workers.dev/ random avatar service
    if (launch.isDemo)
      return "https://t3.ftcdn.net/jpg/06/33/54/78/360_F_633547842_AugYzexTpMJ9z1YcpTKUBoqBF0CUCk10.jpg";
    final appointmentsWithImages =
        allAppointments.where((a) => a.imgs.isNotEmpty);
    if (appointmentsWithImages.isEmpty) return null;
    return appointmentsWithImages.first.imgs.first;
  }

  @override
  get imageRowId {
    final appointmentsWithImages =
        allAppointments.where((a) => a.imgs.isNotEmpty);
    if (appointmentsWithImages.isEmpty) return null;
    return appointmentsWithImages.first.id;
  }

  get webPageLink {
    return "https://patient.apexo.app/${encode("$id|$title|${login.url}")}";
  }

  @override
  Map<String, String> get labels {
    Map<String, String> buildingLabels = {
      txt("Age"): (DateTime.now().year - birth).toString(),
    };

    if (daysSinceLastAppointment == null) {
      buildingLabels[txt("Last visit")] = txt("noVisits");
    } else {
      buildingLabels[txt("Last visit")] =
          "$daysSinceLastAppointment ${txt("daysAgo")}";
    }

    if (gender == 0) {
      buildingLabels[txt("Gender")] = "♀";
    } else {
      buildingLabels[txt("Gender")] = "♂️";
    }

    if (outstandingPayments > 0) {
      buildingLabels[txt("Pay")] = "${txt("underpaid")}🔻";
    }

    if (outstandingPayments < 0) {
      buildingLabels[txt("Pay")] = "${txt("overpaid")}🔺";
    }

    if (paymentsMade != 0) {
      buildingLabels[txt("Total payments")] = "$paymentsMade";
    }

    for (var i = 0; i < tags.length; i++) {
      buildingLabels[List.generate(i + 1, (_) => "\u200B").join("")] = tags[i];
    }
    return buildingLabels;
  }

  // id: id of the patient (inherited from Model)
  // title: name of the patient (inherited from Model)
  /* 1 */ int birth = DateTime.now().year - 18;
  /* 2 */ int gender = 0; // 0 for female, 1 for male
  /* 3 */ String phone = "";
  /* 4 */ String email = "";
  /* 5 */ String address = "";
  /* 6 */ List<String> tags = [];
  /* 7 */ String notes = "";
  /* 8 */ Map<String, String> teeth = {};

  @override
  Patient.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    nullifyCachedAppointments(_) {
      _doneAppointmentsCached = null;
      _allAppointmentsCached = null;
    }

    showArchived.observe(nullifyCachedAppointments);
    appointments.observableMap.observe(nullifyCachedAppointments);

    /* 1 */ birth = json['birth'] ?? birth;
    /* 2 */ gender = json['gender'] ?? gender;
    /* 3 */ phone = json['phone'] ?? phone;
    /* 4 */ email = json['email'] ?? email;
    /* 5 */ address = json['address'] ?? address;
    /* 6 */ tags = List<String>.from(json['tags'] ?? tags);
    /* 7 */ notes = json['notes'] ?? notes;
    /* 8 */ teeth = Map<String, String>.from(json['teeth'] ?? teeth);
  }
  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    final d = Patient.fromJson({});

    /* 1 */ if (birth != d.birth) json['birth'] = birth;
    /* 2 */ if (gender != d.gender) json['gender'] = gender;
    /* 3 */ if (phone != d.phone) json['phone'] = phone;
    /* 4 */ if (email != d.email) json['email'] = email;
    /* 5 */ if (address != d.address) json['address'] = address;
    /* 6 */ if (tags.toString() != d.tags.toString()) json['tags'] = tags;
    /* 7 */ if (notes != d.notes) json['notes'] = notes;
    /* 8 */ if (teeth.isNotEmpty) json['teeth'] = teeth;
    return json;
  }
}
