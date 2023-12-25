import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingSixteen1Screen extends StatelessWidget {
  const OnboardingSixteen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var mediaQueryData = MediaQuery.of(context);
    return SafeArea(
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
                      'assets/images/img_arrowdown.svg',
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 17.0, bottom: 17.0),
                      child: Text(
                        'Profile',
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.0),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.0,bottom: 24.0),
                                        child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/img_ellipse_10.png',
                                                width: 75.0,
                                                height: 75.0,
                                              ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 24.0,
                                                  top: 14.0,
                                                  bottom: 14.0),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Rohit Powar",
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16.0,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                    SizedBox(height: 6.0),
                                                    Text("9768938321",
                                                      style: TextStyle(
                                                        fontFamily: 'DMSansRegular',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14.0,
                                                        color: Color(0xff7F7F7F),
                                                      ),
                                                    )
                                                  ]
                                              )
                                          )
                                        ])
                                    )),
                                Divider(
                                  thickness: 1.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 20.0,bottom: 20.0),
                                      child: Text('General',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0,
                                        color: Color(0xff7F7F7F)
                                      ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Edit Profile',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Notification',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 20.0,bottom: 20.0),
                                      child: Text('Legal',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                            color: Color(0xff7F7F7F)
                                        ),
                                      ),
                                    ),
                                    // _buildNotifications(context),
                                    // _buildLegal(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Terms of use',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    // _buildTermsOfUse(context),
                                    // _buildFaq(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('FAQ',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    // _buildPrivacyPolicy(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Privacy Policy',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    // _buildPersonal(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 20.0,bottom: 20.0),
                                      child: Text('Personal',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                            color: Color(0xff7F7F7F)
                                        ),
                                      ),
                                    ),
                                    // _buildReportABug(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Report a Bug',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    // _buildSettings(context),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Settings',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                            color: Color(0xff000000)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 24.0,top: 16.0,bottom: 16.0),
                                      child: Text('Logout',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                            color: Color(0xffF90909)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24.0),
                              ]
                              )
                          )
                      )
                  ),
                  Divider(
                    thickness: 1,
                  )
                ])),
            bottomNavigationBar: _buildBottomNavigation(context)));
  }




  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 41.0, right: 43.0, bottom: 35.0),
        // decoration: AppDecoration.outlineGray,
        child: Container(
            // decoration: AppDecoration.outlineGray,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Home", style:TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                fontSize: 12.0,
              )),
              Spacer(flex: 34),
              Text("Bookings", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                fontSize: 12.0,
              )),
              Spacer(flex: 27),
              Text("Payment", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                fontSize: 12.0,
              )),
              Spacer(flex: 37),
              Text("More", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                fontSize: 12.0,
              ))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
