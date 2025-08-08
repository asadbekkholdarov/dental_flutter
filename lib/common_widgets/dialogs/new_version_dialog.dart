import 'package:apexo/common_widgets/dialogs/close_dialog_button.dart';
import 'package:apexo/common_widgets/dialogs/dialog_styling.dart';
import 'package:apexo/common_widgets/qrlink.dart';
import 'package:apexo/services/localization/locale.dart';
import 'package:fluent_ui/fluent_ui.dart';

class NewVersionDialog extends StatelessWidget {
  const NewVersionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Txt(txt("newVersionDialogTitle")),
          IconButton(icon: const Icon(FluentIcons.cancel), onPressed: () => Navigator.pop(context))
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Txt(txt("newVersionDialogContent")),
          const SizedBox(height: 10),
          const QRLink(link: "https://apexo.app/#getting-started"),
        ],
      ),
      style: dialogStyling(context, false),
      actions: const [CloseButtonInDialog(buttonText: "close")],
    );
  }
}
