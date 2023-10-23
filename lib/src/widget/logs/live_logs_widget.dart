import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/utils/utils.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';

class LiveLogsWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  final Animation<double> animation;

  const LiveLogsWidget({
    super.key,
    required this.data,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Row(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 52),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.dark,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0.5),
                  blurRadius: 10,
                  color: AppColor.black.withOpacity(0.1),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text:
                      Utils.getMonthFormat(DateTime.parse(data['created_at'])),
                  fontSize: 14,
                  color: AppColor.white.withOpacity(0.5),
                  margin: const EdgeInsets.only(bottom: 8),
                ),
                TextWidget(
                  text: Utils.getHourFormat(DateTime.parse(data['created_at'])),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.dark,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0.5),
                    blurRadius: 10,
                    color: AppColor.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextWidget(
                      text: data['message'] ?? "",
                      fontSize: 18,
                      color: AppColor.gray,
                      align: TextAlign.left,
                      maxLines: 2,
                      margin: const EdgeInsets.only(right: 12),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Utils.getColor(data['type']).withOpacity(0.1),
                          border: Border.all(
                            color: Utils.getColor(data['type']),
                          ),
                        ),
                        child: TextWidget(
                          text: data['action'] ?? "",
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Utils.getColor(data['type']),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
