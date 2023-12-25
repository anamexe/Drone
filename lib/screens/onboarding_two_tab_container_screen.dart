import 'package:drone/screens/onboarding_ten1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTwoTabContainerScreen extends StatefulWidget {
  const OnboardingTwoTabContainerScreen({Key? key}) : super(key: key);

  @override
  OnboardingTwoTabContainerScreenState createState() =>
      OnboardingTwoTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class OnboardingTwoTabContainerScreenState
    extends State<OnboardingTwoTabContainerScreen>
    // with TickerProviderStateMixin
{
  // late TabController tabviewController;

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                // centerTitle: false,
                backgroundColor: Color(0xffffffff),
                // leading: Container(
                //   child: SvgPicture.asset(
                //     'assets/images/img_arrowdown.svg',
                //     height: 20.0,
                //     width: 20.0,
                //   ),
                // ),
                // // centerTitle: true,
                // leadingWidth: 36.0,
                elevation: 0,
                title: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        'assets/images/BackArrow.svg',
                        height: 20.0,
                        width: 20.0,
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 17.0, bottom: 17.0),
                        child: Text(
                          'Payment History',
                          style: TextStyle(
                            fontFamily: 'InterBold',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff000000)
                          ),
                        )),
                  ],
                ),
              ),
              // appBar: AppBar(
              //   backgroundColor: Color(0xffffffff),
              //   leading: Container(
              //     child: SvgPicture.asset(
              //       'assets/images/BackArrow.svg',
              //       height: 20.0,
              //       width: 20.0,
              //     ),
              //   ),
              //   // centerTitle: true,
              //   leadingWidth: 36.0,
              //   elevation: 0,
              //   title: Container(
              //       // margin: EdgeInsets.only(top: 17.0, bottom: 17.0),
              //       child: Text(
              //         'Payment History',
              //         style: TextStyle(
              //           fontFamily: 'InterBold',
              //           fontWeight: FontWeight.w600,
              //           fontSize: 14,
              //         ),
              //       )),
              // ),
              body: Column(children: [
                SizedBox(height: 8.0),

                // _buildTabview(context),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right:16.0 ),
                  child: Container(
                    // padding: EdgeInsets.only(left: 16.0,right: 16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TabBar(

                      indicator: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.white),
                          borderRadius: BorderRadius.circular(4.0),
                        color: Colors.teal
                      ),
                      unselectedLabelColor: Color(0xff5a5a5a),
                      unselectedLabelStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12.0,
                      ),
                      labelColor: Color(0xfff7f7f7),
                        labelStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                        ),
                        tabs: [
                      Tab(child: Text('All')),
                      Tab(child: Text('Received')),
                      Tab(child: Text('Pending')),
                    ]),
                  ),
                ),
                SizedBox(
                    height: 662.0,
                    child: TabBarView(
                        // controller: tabviewController,
                        children: [
                          OnboardingTen1Page(),
                          OnboardingTen1Page(),
                          OnboardingTen1Page()
                        ]))
              ])),
        ));
  }


  /// Section Widget
  // Widget _buildTabview(BuildContext context) {
  //   return Container(
  //       height: 44.0,
  //       width: 343.0,
  //       decoration: BoxDecoration(
  //           color: appTheme.teal400.withOpacity(0.1),
  //           borderRadius: BorderRadius.circular(4.h),
  //           border: Border.all(color: appTheme.teal400, width: 1.h)),
  //       child: TabBar(
  //           // controller: tabviewController,
  //           labelPadding: EdgeInsets.zero,
  //           // labelColor: appTheme.gray10001,
  //           labelStyle: TextStyle(
  //               fontSize: 12.fSize,
  //               fontFamily: 'Inter',
  //               fontWeight: FontWeight.w500),
  //           unselectedLabelColor: theme.colorScheme.errorContainer,
  //           unselectedLabelStyle: TextStyle(
  //               fontSize: 12.fSize,
  //               fontFamily: 'Inter',
  //               fontWeight: FontWeight.w500),
  //           indicator: BoxDecoration(
  //               color: appTheme.teal400,
  //               borderRadius:
  //                   BorderRadius.horizontal(left: Radius.circular(4.h))),
  //           tabs: [
  //             Tab(child: Text("All")),
  //             Tab(child: Text("Received")),
  //             Tab(child: Text("Pending"))
  //           ]));
  // }

  /// Navigates back to the previous screen.
  // onTapArrowLeft(BuildContext context) {
  //   Navigator.pop(context);
  // }
}
