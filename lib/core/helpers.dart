import 'package:flutter/scheduler.dart';

void scheduleAction({required VoidCallback action}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    action();
  });
}

String getSubjectCompleteName({required String subject}) {
  switch (subject) {
    case "pc":
      return "Physique-Chimie";
    case "svt":
      return "SVT";
    default:
      return "Mathématiques";
  }
}

String getSubjectShortName({required String subject}) {
  switch (subject) {
    case "Physique-Chimie":
      return "pc";
    case "SVT":
      return "svt";
    default:
      return "math";
  }
}
