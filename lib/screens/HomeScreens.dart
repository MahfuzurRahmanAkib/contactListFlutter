import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8231F7),
      appBar: myAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          topContent(),
          SizedBox(
            height: 20.h,
          ),
          bottomContent(),
        ],
      ),
    );
  }

  SizedBox bottomContent() {
    return SizedBox(
      height: 520.h,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0.r),
          topRight: Radius.circular(20.0.r),
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    width: 104.w,
                    height: 118.h,
                    child: Stack(
                      children: [
                        Container(
                          width: 104.w,
                          height: 118.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1A003C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0.r),
                          child: const Icon(
                            Icons.arrow_upward_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75.r, left: 5.r),
                          child: Text(
                            'Total TopUp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90.r, left: 5.r),
                          width: 77.w,
                          height: 24.h,
                          child: Text(
                            '\$850.85',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  SizedBox(
                    width: 104.w,
                    height: 118.h,
                    child: Stack(
                      children: [
                        Container(
                          width: 104.w,
                          height: 118.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF6400F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0.r),
                          child: const Icon(
                            Icons.download_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75.r, left: 5.r),
                          child: Text(
                            'Total Withdraw',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90.r, left: 5.r),
                          width: 77.w,
                          height: 24.h,
                          child: Text(
                            '\$350.85',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  SizedBox(
                    width: 104.w,
                    height: 118.h,
                    child: Stack(
                      children: [
                        Container(
                          width: 104.w,
                          height: 118.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1A003C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0.r),
                          child: const Icon(
                            Icons.share_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75.r, left: 5.r),
                          child: Text(
                            'Total Transfer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90.r, left: 5.r),
                          width: 77.w,
                          height: 24.h,
                          child: Text(
                            '\$420.85',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'TopUp & Withdraw',
                    style: TextStyle(
                      color: const Color(0xFF0C031A),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Text(
                    'See All',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF8231F7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    cardContent(),
                    SizedBox(
                      height: 10.h,
                    ),
                    cardContent()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cardContent() {
    return Container(
      height: 120.h,
      padding: EdgeInsets.all(10.r),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        right: 8.r,
                      ),
                      child: CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.greenAccent,
                        child: const Icon(Icons.arrow_forward_ios_rounded),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6.r),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(4.r)),
                            child: Text(
                              "SA308286",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff3b3446),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "1753377562",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff0c031a),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'TXN: PQRS4542120',
                        style: TextStyle(
                          color: const Color(0xFF3B3446),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Text(
                "\$500.00",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00ca7f),
                ),
              )
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(color: Colors.white12, height: 2.r, width: double.infinity),
          SizedBox(
            height: 6.h,
          ),
          Container(
            height: 2.h,
            width: double.infinity,
            color: Colors.black12,
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 16.r,
                    color: const Color(0xff6a6472),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "14.07.23, 10:15 PM",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Commission : ',
                      style: TextStyle(
                        color: const Color(0xFF3B3446),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '\$25.00',
                      style: TextStyle(
                        color: const Color(0xFF0C031A),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Column topContent() {
    return Column(
      children: [
        SizedBox(height: 30.w),
        Container(
          width: 350.w,
          height: 90.h,
          padding: EdgeInsets.symmetric(horizontal: 30.r, vertical: 24.r),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.15000000596046448.r),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Available Balance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      '\$550.52',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                width: 1.w,
                height: 90.h,
                color: Colors.white,
              ),
              SizedBox(width: 15.w),
              SizedBox(
                width: 120.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Commission Balance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      '\$150.07',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        )
      ],
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
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Colors.white,
            size: 24.r,
          ),
        );
      },
    ),
    backgroundColor: const Color(0xFF8231F7),
    elevation: 0,
    title: Row(
      children: [
        SizedBox(
          width: 40.w,
        ),
        Text(
          'Welcome Back, John',
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
