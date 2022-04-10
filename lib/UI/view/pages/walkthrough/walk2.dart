import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutraq/UI/route/route.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk3.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk_1.dart';
import 'package:sutraq/UI/widgets/widgets.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_string.dart';

import 'walk-coponent/demo.dart';

class Walk2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return demo1(
        widgettt: InkWell(
            onTap: (() {
              Get.to(Walk3());
            }),
            child: loginWidget(AppColors.LoginBlack,AppString.login)),
        image: 'assets/svg/Frame11.svg',
        title: AppString.sendM,
        subtitle: AppString.sendMsub,
        log: AppString.login,
        trysq: 'TRY SUTRAQ');
  }
}
