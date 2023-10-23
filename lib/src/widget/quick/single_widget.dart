import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:beyond_factoring/src/widget/quick/fill_widget.dart';
import 'package:flutter/material.dart';

class SingleWidget extends StatelessWidget {
  final String text;
  final bool info;

  const SingleWidget({
    super.key,
    required this.text,
    this.info = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.white,
        border: Border.all(
          color: AppColor.gray.withOpacity(0.5),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 3),
            blurRadius: 10,
            color: AppColor.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            info ? Icons.info_outline : Icons.video_camera_back_rounded,
            size: 24,
            color: Colors.grey,
          ),
          Expanded(
            child: TextWidget(
              text: text,
              fontSize: 20,
              color: AppColor.black,
              align: TextAlign.left,
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ),
          FillWidget(first: 0, second: info ? 5 : 1),
        ],
      ),
    );
  }
}
