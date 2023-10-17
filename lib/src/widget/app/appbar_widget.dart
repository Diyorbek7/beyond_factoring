import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBarWidget(BuildContext context) {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    backgroundColor: AppColor.background,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
    titleSpacing: 24,
    leadingWidth: 80,
    leading: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Image.asset(
          "assets/images/logo.png",
          height: 52,
          width: 38,
        ),
      ),
    ),
    title: const TextWidget(
      text: "Beyond Factoring platform",
      fontWeight: FontWeight.w700,
      fontSize: 30,
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Center(
          child: Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(right: 40),
            child: SvgPicture.asset(
              "assets/icons/settings.svg",
              height: 40,
              width: 40,
            ),
          ),
        ),
      ),
    ],
  );
}
