import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  final String title;
  final String text;

  const CheckWidget({
    super.key,
    required this.title,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 24),
        text.isEmpty
            ? Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: AppColor.gray.withOpacity(0.7),
                  ),
                ),
              )
            : const Icon(
                Icons.check_circle,
                size: 24,
                color: AppColor.black,
              ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: title,
                fontSize: 18,
                color: AppColor.black,
                align: TextAlign.left,
              ),
              TextWidget(
                text: text == " " ? "" : text,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                align: TextAlign.left,
                maxLines: 10,
                margin: EdgeInsets.only(top: text.isEmpty ? 0 : 12),
              ),
            ],
          ),
        ),
        text.isEmpty
            ? Container()
            : const Icon(
                CupertinoIcons.profile_circled,
                size: 24,
              ),
        TextWidget(
          text: text.isEmpty ? "Not complete" : "24 Dec, 2022",
          fontWeight: text.isEmpty ? FontWeight.w400 : FontWeight.w500,
          color: text.isEmpty ? Colors.grey : AppColor.black,
          align: TextAlign.left,
          margin: const EdgeInsets.only(left: 8),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
