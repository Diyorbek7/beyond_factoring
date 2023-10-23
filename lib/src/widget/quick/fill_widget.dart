import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';

class FillWidget extends StatelessWidget {
  final int first;
  final int second;

  const FillWidget({
    super.key,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: AppColor.gray.withOpacity(0.3),
          ),
          child: first == 0
              ? Container()
              : Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 8,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: AppColor.green,
                    ),
                  ),
                ),
        ),
        TextWidget(
          text: "$first of $second tasks",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
          align: TextAlign.left,
          margin: EdgeInsets.only(left: 12),
        ),
      ],
    );
  }
}
