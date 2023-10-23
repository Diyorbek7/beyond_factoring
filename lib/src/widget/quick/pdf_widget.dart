import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';

class PdfWidget extends StatelessWidget {
  final String text;

  const PdfWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.gray.withOpacity(0.2),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.file_copy,
            size: 24,
            color: Colors.grey,
          ),
          Expanded(
            child: TextWidget(
              text: text,
              fontWeight: FontWeight.w400,
              color: AppColor.black,
              align: TextAlign.left,
              margin: EdgeInsets.only(left: 8),
            ),
          ),
        ],
      ),
    );
  }
}
