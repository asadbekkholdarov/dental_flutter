import 'package:apexo/core/multi_stream_builder.dart';
import 'package:apexo/features/appointments/appointment_model.dart';
import 'package:apexo/features/appointments/appointments_store.dart';
import 'package:apexo/services/localization/locale.dart';
import 'package:apexo/features/appointments/open_appointment_panel.dart';
import 'package:apexo/common_widgets/archive_selected.dart';
import 'package:apexo/common_widgets/archive_toggle.dart';
import 'package:apexo/features/doctors/open_doctor_panel.dart';
import 'package:apexo/features/doctors/doctors_store.dart';
import 'package:apexo/features/doctors/doctor_model.dart';
import 'package:apexo/widget_keys.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import "../../common_widgets/datatable.dart";

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      key: WK.doctorsScreen,
      padding: EdgeInsets.zero,
      content: MStreamBuilder(
          streams: [doctors.observableMap.stream, appointments.observableMap.stream],
          builder: (context, snapshot) {
            return DataTable<Doctor>(
              items: doctors.present.values.toList(),
              store: doctors,
              actions: [
                DataTableAction(
                  callback: (_) => openDoctor(),
                  icon: FluentIcons.medical,
                  title: txt("add"),
                ),
                archiveSelected(doctors)
              ],
              furtherActions: [const SizedBox(width: 5), ArchiveToggle(notifier: doctors.notify)],
              onSelect: (item) => openDoctor(item),
              itemActions: [
                ItemAction(
                  icon: FluentIcons.add_event,
                  title: txt("addAppointment"),
                  callback: (id) async {
                    openAppointment(Appointment.fromJson({
                      "operatorsIDs": [id]
                    }));
                  },
                ),
                ItemAction(
                  icon: FluentIcons.mail,
                  title: txt("emailDoctor"),
                  callback: (id) {
                    final doctor = doctors.get(id);
                    if (doctor == null) return;
                    launchUrl(Uri.parse('mailto:${doctor.email}'));
                  },
                ),
              ],
            );
          }),
    );
  }
}
