import 'dart:async';
import 'dart:convert';
import 'package:apexo/app/routes.dart';
import 'package:apexo/common_widgets/button_styles.dart';
import 'package:apexo/common_widgets/item_title.dart';
import 'package:apexo/common_widgets/dialogs/close_dialog_button.dart';
import 'package:apexo/common_widgets/swipe_detector.dart';
import 'package:apexo/core/model.dart';
import 'package:apexo/core/multi_stream_builder.dart';
import 'package:apexo/core/observable.dart';
import 'package:apexo/features/appointments/appointment_model.dart';
import 'package:apexo/features/appointments/appointments_store.dart';
import 'package:apexo/features/settings/settings_stores.dart';
import 'package:apexo/services/localization/locale.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';

class PanelScreen extends StatefulWidget {
  final double layoutHeight;
  final double layoutWidth;
  final Panel panel;
  const PanelScreen({
    required this.panel,
    this.layoutHeight = 500,
    this.layoutWidth = 600,
    super.key,
  });

  @override
  State<PanelScreen> createState() => _PanelScreenState();
}

class _PanelScreenState extends State<PanelScreen> {
  late bool isNew;
  final FocusNode focusNode = FocusNode();
  final panelSwitchController = FlyoutController();
  final confirmCancelController = FlyoutController();
  late Timer saveButtonCheckTimer;
  bool ctrlPressed = false;

  @override
  void dispose() {
    saveButtonCheckTimer.cancel();
    if (widget.panel.item is Appointment) {
      widget.panel.store.observableMap
          .unObserve(observeAppointmentForImgUpdate);
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    isNew = widget.panel.store.get(widget.panel.item.id) == null;
    saveButtonCheckTimer =
        Timer.periodic(const Duration(milliseconds: 750), (_) {
      if (jsonEncode(widget.panel.item.toJson()) != widget.panel.savedJson &&
          widget.panel.hasUnsavedChanges() != true) {
        widget.panel.hasUnsavedChanges(true);
      } else if (jsonEncode(widget.panel.item.toJson()) ==
              widget.panel.savedJson &&
          widget.panel.hasUnsavedChanges() != false) {
        widget.panel.hasUnsavedChanges(false);
      }
    });

    if (widget.panel.item is Appointment) {
      widget.panel.store.observableMap.observe(observeAppointmentForImgUpdate);
    }
  }

  observeAppointmentForImgUpdate(List<DictEvent> events) {
    // update the imgs if it has been changed on the server
    final itemID = (widget.panel.item).id;
    for (var event in events) {
      if (event.type == DictEventType.modify &&
          (widget.panel.item as Appointment).imgs.length !=
              appointments.get(itemID)!.imgs.length) {
        (widget.panel.item as Appointment).imgs =
            appointments.get(itemID)!.imgs;
        widget.panel.selectedTab(widget.panel.selectedTab()); // notify
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      resizeToAvoidBottomInset: true,
      padding: EdgeInsets.zero,
      content: KeyboardListener(
        autofocus: true,
        focusNode: focusNode,
        onKeyEvent: (value) {
          if (value is KeyDownEvent &&
              value.logicalKey == LogicalKeyboardKey.escape &&
              routes.panels().isNotEmpty &&
              widget.panel.inProgress() == false) {
            closeOrConfirmCancel();
            return;
          }

          if (value.logicalKey == LogicalKeyboardKey.controlLeft ||
              value.logicalKey == LogicalKeyboardKey.controlLeft) {
            if (value is KeyDownEvent) {
              ctrlPressed = true;
            } else {
              ctrlPressed = false;
            }
          }

          if (value is KeyDownEvent &&
              value.logicalKey == LogicalKeyboardKey.tab &&
              ctrlPressed) {
            if (widget.panel.selectedTab() == widget.panel.tabs.length - 1) {
              widget.panel.selectedTab(0);
            } else {
              widget.panel.selectedTab(widget.panel.selectedTab() + 1);
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Acrylic(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(color: Colors.grey.withValues(alpha: 0.25)),
            ),
            elevation: 120,
            child: MStreamBuilder(
                streams: [
                  localSettings.stream,
                  widget.panel.selectedTab.stream,
                  routes.minimizePanels.stream,
                ],
                builder: (context, snapshot) {
                  return Column(
                    key: Key(localSettings.selectedLocale.toString()),
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildPanelHeader(),
                      if (routes.minimizePanels() == false ||
                          widget.layoutWidth >= 710) ...[
                        _buildTabsControllers(),
                        _buildTabBody(),
                        if (widget.panel.tabs[widget.panel.selectedTab()]
                                .footer !=
                            null)
                          widget.panel.tabs[widget.panel.selectedTab()].footer!,
                        _buildBottomControls(),
                      ],
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  Widget _buildTabBody() {
    return Expanded(
      child: SingleChildScrollView(
        child: SwipeDetector(
          onSwipeLeft: () {
            if (widget.panel.selectedTab() > 0) {
              widget.panel.selectedTab(widget.panel.selectedTab() - 1);
            }
          },
          onSwipeRight: () {
            if (widget.panel.selectedTab() < widget.panel.tabs.length - 1) {
              widget.panel.selectedTab(widget.panel.selectedTab() + 1);
            }
          },
          child: Container(
            color: FluentTheme.of(context).scaffoldBackgroundColor,
            padding: EdgeInsets.all(widget
                .panel.tabs[widget.panel.selectedTab()].padding
                .toDouble()),
            constraints: BoxConstraints(
                minHeight:
                    widget.panel.tabs[widget.panel.selectedTab()].footer == null
                        ? widget.layoutHeight - 161
                        : widget.layoutHeight - 206),
            child: widget.panel.tabs[widget.panel.selectedTab()].body,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomControls() {
    return Container(
      constraints: const BoxConstraints(minHeight: 50, minWidth: 350),
      child: Acrylic(
        luminosityAlpha: 0.2,
        elevation: 5,
        child: StreamBuilder(
            stream: widget.panel.inProgress.stream,
            builder: (context, snapshot) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: Colors.grey.withValues(alpha: 0.1))),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: widget.panel.inProgress()
                    ? const Center(child: ProgressBar())
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (isNew == false &&
                              widget.panel.item.archived == true)
                            _buildRestoreButton(),
                          if (isNew == false &&
                              widget.panel.item.archived != true)
                            _buildArchiveButton(),
                          _buildSaveButton(),
                          _buildCancelButton(),
                        ],
                      ),
              );
            }),
      ),
    );
  }

  Widget _buildCancelButton() {
    return FlyoutTarget(
      controller: confirmCancelController,
      child: StreamBuilder<bool>(
          stream: widget.panel.hasUnsavedChanges.stream,
          builder: (context, _) {
            return FilledButton(
              onPressed: closeOrConfirmCancel,
              style: greyButtonStyle.copyWith(
                textStyle:
                    const WidgetStatePropertyAll(TextStyle(fontSize: 13)),
                backgroundColor: widget.panel.hasUnsavedChanges()
                    ? WidgetStatePropertyAll(Colors.orange)
                    : const WidgetStatePropertyAll(Colors.grey),
              ),
              child: Row(
                children: [
                  const Icon(FluentIcons.cancel),
                  const SizedBox(width: 5),
                  Txt(widget.panel.hasUnsavedChanges()
                      ? txt("cancel")
                      : txt("close"))
                ],
              ),
            );
          }),
    );
  }

  Widget _buildSaveButton() {
    return StreamBuilder<bool>(
        stream: widget.panel.hasUnsavedChanges.stream,
        builder: (context, _) {
          return FilledButton(
            onPressed: () {
              if (widget.panel.hasUnsavedChanges()) {
                widget.panel.store.set(widget.panel.item);
                widget.panel.savedJson = jsonEncode(widget.panel.item.toJson());
                widget.panel.identifier = widget.panel.item.id;
                if (!widget.panel.result.isCompleted) {
                  widget.panel.result.complete(widget.panel.item);
                }
                setState(() {
                  isNew = false;
                  widget.panel.title = null;
                });
              }
            },
            style: greyButtonStyle.copyWith(
              textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 13)),
              backgroundColor: WidgetStatePropertyAll(
                  widget.panel.hasUnsavedChanges()
                      ? Colors.blue
                      : Colors.grey.withValues(alpha: 0.25)),
            ),
            child: Row(
              children: [
                const Icon(FluentIcons.save),
                const SizedBox(width: 5),
                Txt(txt("save"))
              ],
            ),
          );
        });
  }

  FilledButton _buildArchiveButton() {
    return FilledButton(
      onPressed: () {
        setState(() {
          widget.panel.item.archived = true;
          widget.panel.store.archive(widget.panel.item.id);
        });
      },
      style: greyButtonStyle.copyWith(
        backgroundColor: const WidgetStatePropertyAll(Colors.grey),
        textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 13)),
      ),
      child: Row(
        children: [
          const Icon(FluentIcons.archive),
          const SizedBox(width: 5),
          Txt("${txt("archive")}"),
        ],
      ),
    );
  }

  FilledButton _buildRestoreButton() {
    return FilledButton(
      onPressed: () {
        setState(() {
          widget.panel.item.archived = null;
          widget.panel.store.unarchive(widget.panel.item.id);
        });
      },
      style: greyButtonStyle.copyWith(
        textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 13)),
        backgroundColor: WidgetStatePropertyAll(Colors.teal),
      ),
      child: Row(
        children: [
          const Icon(FluentIcons.archive_undo),
          const SizedBox(width: 5),
          Txt("${txt("Restore")} ${txt(widget.panel.storeSingularName)}")
        ],
      ),
    );
  }

  Acrylic _buildTabsControllers() {
    return Acrylic(
      luminosityAlpha: 0.9,
      elevation: 30,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 17, 3, 0),
        child: SizedBox(
          height: 39,
          child: TabView(
            closeButtonVisibility: CloseButtonVisibilityMode.never,
            onChanged: (value) => widget.panel.selectedTab(value),
            currentIndex: widget.panel.selectedTab(),
            showScrollButtons: false,
            shortcutsEnabled: true,
            tabWidthBehavior: TabWidthBehavior.compact,
            header: widget.panel.selectedTab() != 0
                ? IconButton(
                    icon: const Icon(FluentIcons.chevron_left),
                    onPressed: () => widget.panel
                        .selectedTab(widget.panel.selectedTab() - 1),
                  )
                : const SizedBox(width: 25),
            footer: widget.panel.selectedTab() <
                    widget.panel.tabs
                            .where((t) => t.onlyIfSaved ? (!isNew) : true)
                            .length -
                        1
                ? IconButton(
                    icon: const Icon(FluentIcons.chevron_right),
                    onPressed: () => widget.panel
                        .selectedTab(widget.panel.selectedTab() + 1),
                  )
                : const SizedBox(width: 25),
            tabs: widget.panel.tabs
                .map((e) => Tab(
                      text: Txt(txt(e.title)),
                      icon: Icon(e.icon),
                      body: const SizedBox(),
                      disabled: e.onlyIfSaved && isNew,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildPanelHeader() {
    return GestureDetector(
      onTap: () {
        if (routes.minimizePanels()) routes.minimizePanels(false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2.8, horizontal: 5),
        color: Colors.grey.withValues(alpha: 0.1),
        child: StreamBuilder(
            stream: widget.panel.inProgress.stream,
            builder: (context, snapshot) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    _buildPanelHeaderItemName(),
                    _buildPanelHeaderStoreName()
                  ]),
                  Row(children: [
                    if (routes.panels().length > 1) _buildPanelSwitcher(),
                    // minimization is useless is prevented in big screens
                    if (widget.layoutWidth < 710) _buildPanelMinimizeButton(),
                    widget.panel.inProgress()
                        ? const SizedBox(
                            height: 20, width: 20, child: ProgressRing())
                        : _buildPanelCloseButton()
                  ])
                ],
              );
            }),
      ),
    );
  }

  Widget _buildPanelCloseButton() {
    return FlyoutTarget(
      controller: confirmCancelController,
      child: IconButton(
        icon: const Icon(FluentIcons.cancel),
        onPressed: closeOrConfirmCancel,
      ),
    );
  }

  IconButton _buildPanelMinimizeButton() {
    return IconButton(
      icon: Icon(routes.minimizePanels()
          ? FluentIcons.chevron_up
          : FluentIcons.chevron_down),
      onPressed: () => routes.minimizePanels(!routes.minimizePanels()),
    );
  }

  FlyoutTarget _buildPanelSwitcher() {
    return FlyoutTarget(
      controller: panelSwitchController,
      child: IconButton(
        icon: Row(
          children: [
            const Icon(FluentIcons.reopen_pages),
            const SizedBox(width: 2),
            Text(
              routes.panels().length.toString(),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
        onPressed: openPanelSwitch,
      ),
    );
  }

  Widget _buildPanelHeaderStoreName() {
    return Txt(
      txt(widget.panel.storeSingularName),
      style:
          TextStyle(fontSize: 10.5, color: Colors.grey.withValues(alpha: 0.7)),
      overflow: TextOverflow.fade,
    );
  }

  Widget _buildPanelHeaderItemName() {
    return SizedBox(
      width: 155.5,
      child: ItemTitle(
        maxWidth: 116,
        radius: 13,
        fontSize: 13,
        item: widget.panel.title != null
            ? Model.fromJson({"title": widget.panel.title})
            : widget.panel.item,
        icon: widget.panel.item.archived == true
            ? FluentIcons.archive
            : isNew
                ? FluentIcons.add
                : FluentIcons.edit,
        predefinedColor:
            widget.panel.item.archived == true ? Colors.grey : null,
      ),
    );
  }

  void closeOrConfirmCancel() {
    if (widget.panel.hasUnsavedChanges() == false) {
      routes.closePanel(widget.panel.item.id);
    } else {
      confirmCancelController.showFlyout(builder: (context) {
        return FlyoutContent(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Txt(txt("sureClosePanel")),
              const SizedBox(height: 12.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FilledButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.warningPrimaryColor)),
                    onPressed: () {
                      Flyout.of(context).close();
                      routes.closePanel(widget.panel.item.id);
                    },
                    child: Row(
                      children: [
                        const Icon(FluentIcons.check_mark, size: 16),
                        const SizedBox(width: 5),
                        Txt(txt("sure")),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  CloseButtonInDialog(buttonText: txt("back")),
                ],
              ),
            ],
          ),
        );
      });
    }
  }

  void openPanelSwitch() {
    panelSwitchController.showFlyout(
      barrierDismissible: widget.layoutWidth < 710,
      dismissWithEsc: true,
      dismissOnPointerMoveAway: true,
      builder: (context) => MenuFlyout(items: [
        ...([...routes.panels()]
              ..sort((a, b) => b.creationDate - a.creationDate))
            .map((panel) {
          return MenuFlyoutItem(
            selected: panel == widget.panel,
            leading: Icon(panel.icon),
            trailing: panel.inProgress()
                ? const SizedBox(height: 20, width: 20, child: ProgressRing())
                : Icon(panel.store.get(panel.item.id) == null
                    ? FluentIcons.add
                    : FluentIcons.edit),
            text: Txt(
                "${txt(panel.storeSingularName)}: ${panel.title ?? panel.item.title}",
                style: TextStyle(
                    fontWeight:
                        panel == widget.panel ? FontWeight.w500 : null)),
            onPressed: () =>
                routes.bringPanelToFront(routes.panels().indexOf(panel)),
            closeAfterClick: true,
          );
        })
      ]),
    );
  }
}
