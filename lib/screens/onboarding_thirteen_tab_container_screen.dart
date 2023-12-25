import 'package:drone/screens/my_bookings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingThirteenTabContainerScreen extends StatefulWidget {
  const OnboardingThirteenTabContainerScreen({Key? key}) : super(key: key);

  @override
  OnboardingThirteenTabContainerScreenState createState() =>
      OnboardingThirteenTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class OnboardingThirteenTabContainerScreenState
    extends State<OnboardingThirteenTabContainerScreen>
    // with TickerProviderStateMixin
{


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
                          'My Bookings',
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
              //   elevation: 0,
              //   leadingWidth: 36.0,
              //   leading: SvgPicture.asset('assets/images/arrow1.svg'),
              //   title:Text('My Bookings',style: TextStyle(
              //     fontFamily: 'InterBold',
              //     fontWeight: FontWeight.w600,
              //     fontSize:14.0
              //   )),
              // ),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Column(children: [
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
                            Tab(child: Text('Upcoming')),
                            Tab(child: Text('Completed')),
                            Tab(child: Text('Cancelled')),
                          ]),
                    ),
                  ),
                        SizedBox(
                            height: 662.0,
                            child: TabBarView(
                                // controller: tabviewController,
                                children: [
                                  MyBookings(),
                                  MyBookings(),
                                  MyBookings(),
                                ]))
                      ])))),
        ));
  }



}
