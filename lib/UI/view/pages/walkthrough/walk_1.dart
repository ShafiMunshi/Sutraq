import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sutraq/UI/route/route.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk2.dart';
import 'package:sutraq/UI/widgets/widgets.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_string.dart';

import 'walk-coponent/demo.dart';

class Walk1 extends StatelessWidget {
  const Walk1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return demo1(
        widgettt: InkWell(
            onTap: () {
              Get.to(Walk2());
            },
            child: loginWidget(AppColors.LoginBlack, AppString.login)),
        image: 'assets/svg/Frame.svg',
        title: AppString.safeM,
        subtitle: AppString.safeMsub,
        log: AppString.login,
        trysq: 'Try Sutraq');
  }
}
