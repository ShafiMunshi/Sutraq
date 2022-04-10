import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutraq/UI/view/auth/login.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk_1.dart';
import 'package:sutraq/UI/widgets/widgets.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_string.dart';

import 'walk-coponent/demo.dart';

class Walk3 extends StatelessWidget {
  const Walk3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return demo1(
        widgettt: InkWell(
            onTap: () {
              Get.to(Login());
            },
            child: loginWidget(AppColors.LoginBlack, AppString.login)),
        image: 'assets/svg/Group.svg',
        title: AppString.unbeatM,
        subtitle: AppString.unbeatMsub,
        log: AppString.login,
        trysq: AppString.trySutraq);
  }
}
