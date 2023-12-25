import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyBookings extends StatefulWidget {
  // const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
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
}
Widget _buildFilter(BuildContext context) {
  List<String> list = <String>['Filter', 'Weekly', 'Monthly', 'Custom'];
  String dropdownValue = list.first;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: ListView.separated(
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            border: Border.all(
              width: 1.0,
              color: Colors.black12
            )
          ),
          padding: EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: Image.asset('assets/images/img_rectangle_2565.png',height: 56.0,width: 59.0,)),
              // CustomImageView(
              //   imagePath: ImageConstant.imgRectangle2565,
              //   height: 56.0,
              //   width: 59.0,
              //   radius: BorderRadius.circular(
              //     2.0,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.0,
                  top: 7.0,
                  bottom: 7.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Booking ID: 32332328',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0
                      ),
                    ),
                    SizedBox(height: 11.0),
                    Text(
                      'Booking date: 12th Nov 23',
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
              Padding(
                padding: const EdgeInsets.only(bottom: 37.0),
                child: SvgPicture.asset('assets/images/img_arrowdown.svg',
                height: 20.0,
                  width: 20.0,
                ),
              ),
              // CustomImageView(
              //   imagePath: ImageConstant.imgArrowdown,
              //   height: 20.adaptSize,
              //   width: 20.adaptSize,
              //   margin: EdgeInsets.only(bottom: 36.v),
              // ),
            ],
          ),
        );

      },
    ),
  );
}