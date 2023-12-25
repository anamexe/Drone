
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OnboardingTen1Page extends StatefulWidget {
  const OnboardingTen1Page({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingTen1PageState createState() => OnboardingTen1PageState();
}

class OnboardingTen1PageState extends State<OnboardingTen1Page>
    with AutomaticKeepAliveClientMixin<OnboardingTen1Page> {
  @override
  bool get wantKeepAlive => true;
  // List<String> list = <String>['Filter','Weekly','Monthly','Custom'];
  // String? dropdownValue='Filter';

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.0),
              _buildFilter(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilter(BuildContext context) {
    List<String> list = <String>['Filter', 'Weekly', 'Monthly', 'Custom'];
    String dropdownValue = list.first;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              // width: 80.0,
              // height:30.0,
              child:  DecoratedBox( 
                decoration:BoxDecoration(
                  border: Border.all(width: 1,color: Color(0xff000000))
                ) ,
                child: DropdownButton<String>(
                  iconSize: 0.0,
                  // borderRadius: BorderRadius.circular(4.0),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )
            ),
          ),
          SizedBox(height: 12.0),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.0,
              );
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    border:Border.all(width: 1.0,color: Colors.black12)
                ),
                // decoration: AppDecoration.outlineBluegray1001.copyWith(
                //   borderRadius: BorderRadiusStyle.roundedBorder4,
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: SvgPicture.asset('assets/images/img_frame_primary.svg',
                        height: 20.0,
                        width: 20.0,
                      ),
                    ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgFramePrimary,
                    //   height: 20.0,
                    //   width: 20.0,
                    //   margin: EdgeInsets.only(bottom: 24.0),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        // top: 12.0,
                        // bottom: 3.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Booking ID: 32332328",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Date: 12th Nov 23",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "₹ 3,000",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Cash",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
