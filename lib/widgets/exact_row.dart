import 'package:flutter/material.dart';

import '../utils/constants.dart';

Widget exactRow(
    {required String actionText,
    required String itemValue,
    required ValueChanged? onChanged}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
    child: Row(
      children: [
        Text(actionText),
        const SizedBox(width: 8),
        DropdownButton<String>(
            value: itemValue,
            items: Constants.kLanguages
                .map((String item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)))
                .toList(),
            onChanged: onChanged),
      ],
    ),
  );
}
