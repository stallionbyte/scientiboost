import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:http/http.dart' as http;

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

Future<bool> hasInternet() async {
  const int timeOut = 5;

  try {
    final response = await http
        .get(Uri.parse('https://www.google.com'))
        .timeout(const Duration(seconds: timeOut));

    return response.statusCode == 200;
  } catch (e) {
    return false;
  }
}

Widget buildUnSignUpOrPasswordForgetOrSignInContent({
  required GoRouter router,
  required AuthState authState,
  required String question,
  required String routeText,
  required String route,
}) {
  if (authState is! Authenticated) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 16.0),
        children: <InlineSpan>[
          TextSpan(text: question),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: GestureDetector(
              onTap: () {
                router.push(route);
              },
              child: Text(
                routeText,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return SizedBox.shrink();
  }
}
