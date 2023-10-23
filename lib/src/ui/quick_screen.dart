import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:beyond_factoring/src/widget/quick/check_widget.dart';
import 'package:beyond_factoring/src/widget/quick/fill_widget.dart';
import 'package:beyond_factoring/src/widget/quick/pdf_widget.dart';
import 'package:beyond_factoring/src/widget/quick/single_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickScreen extends StatefulWidget {
  const QuickScreen({super.key});

  @override
  State<QuickScreen> createState() => _QuickScreenState();
}

class _QuickScreenState extends State<QuickScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(80),
        children: [
          Container(
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
                    color: AppColor.black.withOpacity(0.1)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.profile_circled,
                      size: 24,
                    ),
                    Expanded(
                      child: TextWidget(
                        text: "Quick start guide",
                        fontSize: 20,
                        color: AppColor.black,
                        align: TextAlign.left,
                        margin: EdgeInsets.only(left: 8),
                      ),
                    ),
                    FillWidget(first: 2, second: 3),
                  ],
                ),
                const TextWidget(
                  text:
                      "A quick-start guide or quickstart guide (QSG), also known as a quick reference guide (QRG), is in essence a shortened version of a manual, meant to make a buyer familiar with their product as soon as possible. This implies the use of a concise step-based approach that allows the buyer to use a product without any delay, if necessary including the relevant steps needed forinstallation",
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  align: TextAlign.left,
                  maxLines: 10,
                  margin: EdgeInsets.symmetric(vertical: 24),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: PdfWidget(text: "Onboarding document.pdf"),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: PdfWidget(text: "Employment_details.pdf"),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: PdfWidget(text: "Another_doc_17_jan.pdf"),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  margin: const EdgeInsets.only(top: 24),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColor.gray.withOpacity(0.7),
                    ),
                  ),
                  child: Column(
                    children: [
                      const CheckWidget(
                        title: "Add profile details to online forms",
                        text:
                            "Before we discuss what comprises a project description, it's essential to understand what we're trying todescribe in...",
                      ),
                      Container(
                        height: 1,
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        color: AppColor.gray.withOpacity(0.7),
                      ),
                      const CheckWidget(
                        title: "Sign NDA to begin reviewing tender",
                        text: " ",
                      ),
                      Container(
                        height: 1,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        color: AppColor.gray.withOpacity(0.7),
                      ),
                      const SizedBox(height: 12),
                      const CheckWidget(
                        title: "Upload documents to internal HR records",
                        text: "",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const SingleWidget(
            text: "Resource allowance requisition",
            info: true,
          ),
          const SizedBox(height: 24),
          const SingleWidget(text: "Resource allowance requisition"),
        ],
      ),
    );
  }
}
