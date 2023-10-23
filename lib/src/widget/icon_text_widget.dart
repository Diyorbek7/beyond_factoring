import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final String text;

  const IconTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Icon(
            Icons.check,
            size: 20,
            color: AppColor.gray.withOpacity(0.7),
          ),
          Expanded(
            child: TextWidget(
              text: text,
              margin: const EdgeInsets.only(left: 12),
              color: AppColor.gray.withOpacity(0.8),
              align: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
