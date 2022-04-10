import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/UI/view/bottomNav/btmNavbar.dart';
import 'package:sutraq/const/app_colors.dart';

import '../../../widgets/widgets.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BtmNavBar(),
      body: Container(
        height: 812.h,
        width: 375.w,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              padding: EdgeInsets.only(top: 72.r, left: 16.r, right: 17.r),
              height: 251.h,
              width: double.infinity,
              color: AppColors.homeBGcolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Avatar Section
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Text(
                            'OP',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          radius: 20.r,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Precious',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Gelion',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Su/Pre123',
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontFamily: 'Circular Std',
                                color: AppColors.smallTextclr,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              color: Colors.white,
                              size: 20.r,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //Currency Section
                  Container(
                    height: 90.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        currencyCSection(
                            'assets/logo/logo.png',
                            'SUTRAQ CURRENCY',
                            'Q190,000',
                            AppColors.greenAccentclr,
                            Colors.white),
                        SizedBox(
                          width: 16.w,
                        ),
                        currencyCSection('assets/logo/logo.png', 'USD',
                            '\$42,000', AppColors.greenAccentclr, Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Wallet secion

            Positioned(
              // top: -251.h,
              bottom: 380.h,
              child: Container(
                padding: EdgeInsets.only(top: 18.h, left: 40.r, right: 40.r),
                height: 144.h,
                width: 375.w,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  color: AppColors.greenAccentclr,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Fund
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return fundWidget(' FUND WALLET');
                            });
                      },
                      child: dashButton(
                          'assets/icons/account_balance_wallet_24px.png',
                          AppColors.homeBGcolor,
                          'Fund Wallet',
                          Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return fundWidget('SEND MONEY');
                            });
                      },
                      child: dashButton('assets/icons/input_24px.png',
                          AppColors.homeBGcolor, 'Send Money', Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return fundWidget('WITHDRAW FUNDS');
                            });
                      },
                      child: dashButton('assets/icons/input_24px2.png',
                          AppColors.homeBGcolor, 'Withdraw', Colors.white),
                    )
                  ],
                ),
              ),
            ),

            //transaction section

            Positioned(
              top: 353.h,
              child: Container(
                padding: EdgeInsets.only(top: 22.h, left: 35.r, right: 35.r),
                height: 500.h,
                width: 375.w,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //recent
                    recenTxt9('Recent Transaction'),

                    SizedBox(
                      height: 7.h,
                    ),

                    // Recent Transaction Section
                    Container(
                      height: 315.h,
                      child: ListView(
                        children: [
                          trxx('assets/icons/call_received_24px.png',
                              AppColors.callInClr, 'Access Bank', '\$2400'),
                          trxx('assets/icons/call_made_24px.png',
                              AppColors.callOutClr, 'Alpha Loans', 'N10,000'),
                          trxx('assets/icons/call_received_24px.png',
                              AppColors.callInClr, 'Access Bank', 'N4,500,000'),
                          trxx('assets/icons/call_made_24px.png',
                              AppColors.callOutClr, 'Alpha Loans', 'N10,000'),
                          trxx('assets/icons/call_received_24px.png',
                              AppColors.callInClr, 'Access Bank', 'N4000'),
                          trxx('assets/icons/call_made_24px.png',
                              AppColors.callOutClr, 'Alpha Loans', 'N10,000'),
                          trxx('assets/icons/call_received_24px.png',
                              AppColors.callInClr, 'Access Bank', 'N4000'),
                          trxx('assets/icons/call_made_24px.png',
                              AppColors.callOutClr, 'Alpha Loans', 'N10,000'),
                          trxx('assets/icons/call_received_24px.png',
                              AppColors.callInClr, 'Access Bank', 'N4000'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    viewAll()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
