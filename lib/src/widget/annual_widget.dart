import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:beyond_factoring/src/widget/icon_text_widget.dart';
import 'package:flutter/material.dart';

class AnnualWidget extends StatelessWidget {
  final int index;

  const AnnualWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          color: index == 0 ? Colors.yellow : index == 1 ? Colors.blue : Colors.deepPurpleAccent,
        ),
        TextWidget(
          text: index == 0
              ? "Plus"
              : index == 1
                  ? "Pro"
                  : "Enterprise",
          fontSize: 24,
          margin: const EdgeInsets.symmetric(vertical: 20),
        ),
        Row(
          children: [
            TextWidget(
              text: index == 0
                  ? "€29"
                  : index == 1
                      ? "€59"
                      : "€119",
              fontSize: 30,
            ),
            index > 2
                ? Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: AppColor.blue,
                      ),
                      color: AppColor.blue.withOpacity(0.8),
                    ),
                    child: const TextWidget(
                      text: "-15% Discount",
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : Container(),
          ],
        ),
        TextWidget(
          text: "per user/month, billed annually",
          fontWeight: FontWeight.w400,
          color: AppColor.gray.withOpacity(0.7),
          margin: const EdgeInsets.only(top: 8),
        ),
        Container(
          height: 56,
          margin: const EdgeInsets.symmetric(vertical: 32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
          ),
          child: Center(
            child: TextWidget(
              text: index == 0
                  ? "Upgrade to Plus"
                  : index == 1
                      ? "Upgrade to Pro"
                      : "Talk to sales",
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        TextWidget(
          text: index == 0
              ? "For growing teams"
              : index == 1
                  ? "For scaling businesses"
                  : "For large-scale organizations",
          fontSize: 20,
        ),
        IconTextWidget(
          text: index == 0
              ? "Enhanced email sending"
              : index == 1
                  ? "Unlimited reporting"
                  : "Upgraded contact analysis",
        ),
        IconTextWidget(
          text: index == 0
              ? "Enhanced email sending"
              : index == 1
                  ? "Advanced data enrichment"
                  : "Priority support",
        ),
        IconTextWidget(
          text: index == 0
              ? "Enhanced email sending"
              : index == 1
                  ? "SAML and SSO"
                  : "Custom billing",
        ),
      ],
    );
  }
}
