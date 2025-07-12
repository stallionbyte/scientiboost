import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants.dart';

Widget result({
  WidgetSpan? leftRich,
  List<InlineSpan>? leftRichs,
  required String value,
  WidgetSpan? unitRich,
  String? left,
  String? unit,
}) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        if (leftRich != null) leftRich,

        if (leftRichs != null) ...leftRichs,

        if (left != null)
          TextSpan(
            text: left,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

        const TextSpan(
          text: " = ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        TextSpan(
          text: "$value ",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        if (unitRich != null) unitRich,

        if (unit != null)
          TextSpan(
            text: unit,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
      ],
    ),
  );
}
