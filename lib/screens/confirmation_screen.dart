import 'package:flutter/material.dart';

class ConfirmDeparture extends StatefulWidget {
  // const ConfirmDeparture({super.key});

  @override
  State<ConfirmDeparture> createState() => _ConfirmDepartureState();
}

class _ConfirmDepartureState extends State<ConfirmDeparture> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 24.0, right: 24.0, left: 24.0, bottom: 24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Service Confirmation',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        color: Color(0xff090A0A)
                      )),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 24.0,left: 24.0,bottom: 34.0,),
                child: Text(
                  'Ready to depart for the customer''\'s location?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
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
                          'Confirm Departure',
                          style: TextStyle(
                            fontFamily: 'InterSemiBold',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xffffffff),
                          ),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Divider(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 327.0,
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xffffffff),
              ),
              child: Center(
                  child: Text(
                    'Remind me Later',
                    style: TextStyle(
                      fontFamily: 'InterRegular',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Color(0xff121212),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
