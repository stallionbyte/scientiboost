import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/scheduler.dart';

import 'package:scientiboost/core/providers.dart';

void showSnackBar({
  required BuildContext context,
  required Widget content,
  Duration? duration,
  Color? backgroundColor,
  bool? showCloseIcon,
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: content,
      duration: duration ?? const Duration(seconds: 5),
      showCloseIcon: showCloseIcon ?? true,
      backgroundColor: backgroundColor ?? Colors.blue,
    ),
  );
}

void scheduleShowSnackBar({
  required BuildContext context,
  required Widget content,
  Duration? duration,
  Color? backgroundColor,
  bool? showCloseIcon,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    showSnackBar(
      context: context,
      content: content,
      duration: duration,
      backgroundColor: backgroundColor,
      showCloseIcon: showCloseIcon,
    );
  });
}

void scheduleJustSignInReset({
  required BuildContext context,
  required WidgetRef ref,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    ref.read(justSignInProvider.notifier).state = false;
  });
}

void scheduleJustSignUpReset({
  required BuildContext context,
  required WidgetRef ref,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    ref.read(justSignUpProvider.notifier).state = false;
  });
}

void scheduleJustSignOutReset({
  required BuildContext context,
  required WidgetRef ref,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    ref.read(justSignOutProvider.notifier).state = false;
  });
}
