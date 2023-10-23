import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/annual_widget.dart';
import 'package:beyond_factoring/src/widget/app/appbar_widget.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: appBarUpgradeWidget(context),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: Center(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 4,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: AppColor.gray.withOpacity(0.2),
                  ),
                ),
                child: TabBar(
                  controller: tabController,
                  dividerColor: Colors.transparent,
                  indicatorWeight: 0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: const EdgeInsets.all(1),
                  labelColor: AppColor.blue,
                  unselectedLabelColor: AppColor.gray.withOpacity(0.7),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppColor.fontFamily,
                    fontSize: 18,
                  ),
                  indicator: BoxDecoration(
                    color: AppColor.gray.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Text(
                            "Annual",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Flexible(
                          child: Container(
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
                              text: "-15%",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Tab(text: "Monthly"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 52, vertical: 20),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: AnnualWidget(index: 0),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: AnnualWidget(index: 1),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: AnnualWidget(index: 2),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextWidget(
                        text: "More details and all features",
                        color: AppColor.gray.withOpacity(0.9),
                        fontSize: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "View Pricing Page",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: AppColor.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 200,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
