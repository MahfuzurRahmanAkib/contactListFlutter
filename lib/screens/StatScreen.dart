import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HomeScreens.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StatScreenState();
  }
}

class _StatScreenState extends State<StatScreen> {
  Map<String, double> dataMap = {
    "TopUp": 100,
    "Payout": 200,
    "Transfer": 890,
    "Commission": 123
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF8231F7),
        appBar: myAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 770.h,
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0.r),
                    topRight: Radius.circular(20.0.r),
                  ),
                  child: Container(
                    color: const Color(0xFFF6F6F6),
                    padding: EdgeInsets.all(16.0.r),
                    child: Column(
                      children: [
                        SizedBox(height: 30.h),
                        const balanceBox(),
                        SizedBox(height: 50.h),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0.r),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15.r, right: 15.r, top: 10.r, bottom: 10.r),
                            color: Colors.white,
                            height: 150.h,
                            width: double.infinity,
                            child: Center(
                              child: PieChart(
                                dataMap: dataMap,
                                chartRadius: 200.r,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}

class balanceBox extends StatelessWidget {
  const balanceBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0.r), // Rounded border
      child: Container(
        padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 20.r),
        color: const Color(0xff6A1CDA),
        height: 150.h,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Available Balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 110.w,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.download,
                        size: 30.r,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        size: 30.r,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '\$550.52',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    actions: [
      Container(
        height: 40.h,
        width: 40.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
          icon: Icon(Icons.notification_important,
              color: Colors.black, size: 24.r),
          onPressed: () {},
        ),
      ),
    ],
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
          icon: Container(
            height: 40.h,
            width: 40.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24.r,
            ),
          ),
        );
      },
    ),
    backgroundColor: const Color(0xFF8231F7),
    elevation: 0,
    title: Row(
      children: [
        SizedBox(
          width: 100.w,
        ),
        Text(
          'Statistics',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
