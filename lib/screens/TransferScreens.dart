import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HomeScreens.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TransferState();
  }
}

class _TransferState extends State<Transfer> {
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
                        smallCardForBalance(),
                        SizedBox(height: 90.h),
                        amountContent(),
                        SizedBox(height: 50.h),
                        buttonForTransfer()
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }

  Row buttonForTransfer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 140.w,
          height: 53.h,
          margin: EdgeInsets.only(left: 16.r, right: 16.r),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffAF6F6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r))),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: const Color(0xFF092C4C),
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: 140.w,
          height: 53.h,
          margin: EdgeInsets.only(left: 16.r, right: 16.r),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6B1DDC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r))),
            child: Text(
              'Send',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container amountContent() {
    return Container(
        width: double.infinity,
        height: 70.h,
        padding: EdgeInsets.all(16.r),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Amount :',
              style: TextStyle(
                color: const Color(0xFF0C031A),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  iconColor: Colors.blueGrey,
                  contentPadding: EdgeInsets.fromLTRB(16.r, 0.r, 0.r, 0.r),
                  hintText: "Amount",
                  fillColor: const Color(0xffAF6F6F6),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0.r),
                      borderSide: BorderSide(width: 1.w, color: Colors.black)),
                ),
              ),
            ),
            Container(
              height: 20.h,
              width: 1.w,
              color: Colors.black,
            ),
            Text(
              'USD',
              style: TextStyle(
                color: const Color(0xFF0C031A),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ));
  }

  Container smallCardForBalance() {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.all(16.r),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.r, left: 5.r, right: 10.r),
            width: 40.w,
            height: 40.h,
            child: Icon(
              Icons.album_rounded,
              size: 40.r,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.r,
              top: 30.r,
            ),
            child: Text(
              'Select sub agent',
              style: TextStyle(
                color: const Color(0xFF0C031A),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.r),
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: const Icon(Icons.download),
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.r),
            child: Column(
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: const Color(0xFF0C031A),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$550.52',
                  style: TextStyle(
                    color: const Color(0xFF00C97E),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          )
        ],
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
          width: 90.w,
        ),
        Text(
          'Transfer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  );
}
