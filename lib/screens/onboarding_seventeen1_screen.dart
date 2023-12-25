import 'package:drone/screens/onboarding_two_tab_container_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnboardingSeventeen1Screen extends StatelessWidget {
  const OnboardingSeventeen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            // appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(children: [
                  _buildBookingIdSm(context),
                  SizedBox(height: 16.0),
                  _buildCustomerDetails(context),
                  SizedBox(height: 16.0),
                  _buildPaymentSummary(context),
                  SizedBox(height: 5.0)
                ])),
            bottomNavigationBar: _buildEndOtp(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffffffff),
      leading: Container(
        // margin: EdgeInsets.only(left: 16.0, top: 17.0,bottom: 17.0),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff000000),
          ),
          onPressed: () {},
        ),
      ),
      // centerTitle: true,
      leadingWidth: 36.0,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/img_frame_teal_400.svg',
            ),
            Container(
                margin: EdgeInsets.only(top: 17.0, bottom: 17.0),
                child: Text(
                  'Booking Confirmed',
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
    );
  }

  /// Section Widget
  Widget _buildBookingIdSm(BuildContext context) {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Booking ID: ",
                        style: TextStyle(
                          fontFamily: 'DMSansRegular',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        )),
                    TextSpan(
                        text: "SM-1003448980",
                        style: TextStyle(
                          fontFamily: 'InterSemiBold',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ))
                  ]),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0),
                Row(children: [
                  SvgPicture.asset(
                    'assets/images/img_frame_black_900_01_16x16.svg',
                    width: 16.0,
                    height: 16.0,
                  ),
                  // CustomImageView(
                  //     imagePath: ImageConstant.imgFrameBlack9000116x16,
                  //     height: 16.adaptSize,
                  //     width: 16.adaptSize,
                  //     margin: EdgeInsets.only(bottom: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.0, top: 2.0),
                      child: Text("1st June -  4th June",
                          style: TextStyle(
                            fontFamily: 'InterRegular',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Color(0xff000000),
                          )))
                ]),
                SizedBox(height: 10.0),
                Row(children: [
                  SvgPicture.asset(
                    'assets/images/img_frame_16x16.svg',
                    width: 16.0,
                    height: 16.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 4.0, top: 3.0),
                      child: Text("4:pm",
                          style: TextStyle(
                            fontFamily: 'InterRegular',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Color(0xff000000),
                          )))
                ])
              ]),
        ));
  }

  /// Section Widget
  Widget _buildCustomerDetails(BuildContext context) {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        // padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        // decoration: AppDecoration.outlineBlack
        //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Customer Details",
                        style: TextStyle(
                          fontFamily: 'DMSansRegular',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ))),
                SizedBox(height: 15.0),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      SvgPicture.asset('assets/images/img_frame_3.svg'),
                      Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text("Aziz Gida",
                              style: TextStyle(
                                fontFamily: 'InterRegular',
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              )
                          )
                      )
                    ])),
                SizedBox(height: 10.0),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset('assets/images/img_frame_4.svg'),
                  Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text("9769876231",
                          style: TextStyle(
                              fontFamily: 'InterRegular',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              color: Color(0xff4894FE)))),
                  Spacer(),
                  Text("Call User",
                      style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Color(0xff4894FE)))
                ]),
                SizedBox(height: 14.0),
                Divider(),
                SizedBox(height: 11.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: SvgPicture.asset(
                        'assets/images/img_frame_5.svg',
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                    Expanded(
                        child: Container(
                            // width: 294.0,
                            // margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.only(left: 4.0),
                            child: Text(
                                "8-1-329/C, Koh E Sar Colony, Brindavan Colony, Toli Chowki, Hyderabad, Telangana 500008",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'InterRegular',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  height: 1.50,
                                ))))
                  ]),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        width: 2,
                        color: Color(0xff4894FE),
                      ))),
                      child: Text("View Map",
                          style: TextStyle(
                            // height: 1.5,
                            fontFamily: 'InterRegular',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Color(0xff4894FE),
                          )),
                    ),
                  )
                ])
              ]),
        ));
  }

  /// Section Widget
  Widget _buildPaymentSummary(BuildContext context) {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        // padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        // decoration: AppDecoration.outlineBlack
        //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Payment Summary",
                    style: TextStyle(
                      fontFamily: 'DMSansRegular',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ))),
            SizedBox(height: 14.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Mode',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  'Cash',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Drone Charges',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '₹ 2,000',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Charges',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '₹ 1,000',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 11.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub-Total',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '₹ 3,000',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ]),
        ));
  }

  /// Section Widget
  Widget _buildEndOtp(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingTwoTabContainerScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24.0),
        child: Container(
          // width: 327.0,
          height: 48.0,
          // padding: EdgeInsets.only(left: 24.0,right: 24.0),
          // color: Color(0xff25A19D),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff001D1C),
                    Color(0xff25A19D),

                  ])
          ),
          child: Center(
              child: Text(
                'End OTP',
                style: TextStyle(
                  fontFamily: 'InterSemiBold',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Color(0xffffffff),
                ),
              )),
        ),
      ),
    );
  }


  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
