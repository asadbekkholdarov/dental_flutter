import 'package:apexo/app/routes.dart';
import 'package:apexo/services/localization/en.dart';
import 'package:apexo/services/localization/locale.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: routes.history.isNotEmpty,
      child: Tooltip(
        message: "Back",
        child: IconButton(
            icon: Icon(locale.s.$direction == Direction.rtl ? FluentIcons.forward : FluentIcons.back),
            onPressed: () => routes.goBack()),
      ),
    );
  }
}
