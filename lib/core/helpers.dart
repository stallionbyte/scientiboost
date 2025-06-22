import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void showSnackBar({
  required BuildContext context,
  required String content,
  Duration? duration,
  Color? backgroundColor,
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      duration: duration ?? const Duration(seconds: 5),
      showCloseIcon: true,
      backgroundColor: backgroundColor ?? Colors.blue,
    ),
  );
}

void scheduleShowSnackBar({
  required BuildContext context,
  required String content,
  Duration? duration,
  Color? backgroundColor,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    showSnackBar(
      context: context,
      content: content,
      duration: duration,
      backgroundColor: backgroundColor,
    );
  });
}
