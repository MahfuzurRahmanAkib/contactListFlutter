import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'HomeScreens.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFF8231F7),
          appBar: myAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 220.h,
                    ),
                    SizedBox(
                      height: 550.h,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0.r),
                          topRight: Radius.circular(20.0.r),
                        ),
                        child: Container(
                          color: const Color(0xFFF6F6F6),
                          padding: EdgeInsets.all(16.r),
                          child: mainPartOfProfile(),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 100.r,
                  left: 20.r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    child: Container(
                      height: 177.h,
                      width: 343.w,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.h),
                          Text(
                            'Mr. Joyce Lathrop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF092C4C),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              child: Container(
                                height: 45.h,
                                width: 190.w,
                                padding: EdgeInsets.all(5.r),
                                color: const Color(0xFFE34137),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 50.r),
                                      child: Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'ID :',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' MA21209',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Icon(
                                            Icons.copy_all_outlined,
                                            color: Colors.white,
                                            size: 14.r,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 35.r),
                                      child: Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'NickName :',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' IPL2023',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Icon(
                                            Icons.copy_all_outlined,
                                            color: Colors.white,
                                            size: 14.r,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ), //Container
                ),
                Positioned(
                  top: 40.r,
                  left: 150.r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      color: Colors.white,
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.account_box,
                          color: Colors.black,
                          size: 80.r,
                        ),
                      ),
                    ),
                  ), //Container
                ),
              ],
            ),
          ),
        ));
  }

  Column mainPartOfProfile() {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 16.r, right: 16.r),
          child: Container(
            width: 335.w,
            height: 200.h,
            padding: EdgeInsets.all(16.r),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.r),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: Icon(
                        Icons.mail_outline_sharp,
                        color: Colors.blue,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r),
                      child: Text(
                        'Help & Support',
                        style: TextStyle(
                          color: const Color(0xFF0C031A),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.10.r,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.r),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18.r,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: Icon(
                        Icons.refresh_outlined,
                        color: Colors.deepOrange,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r),
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: const Color(0xFF0C031A),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.10.r,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.r),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18.r,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: Icon(
                        Icons.delete_outline,
                        color: Colors.amber,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 15.r),
                        child: Text(
                          'Offers & News',
                          style: TextStyle(
                            color: const Color(0xFF0C031A),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 0.10.r,
                          ),
                        )),
                    SizedBox(
                      width: 125.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.r),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18.r,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: Icon(
                        Icons.question_mark_sharp,
                        color: Colors.red,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.r,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r),
                      child: Text(
                        'FAQ’s',
                        style: TextStyle(
                          color: const Color(0xFF0C031A),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.10.r,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.r),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18.r,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 16.r, right: 16.r),
          child: Container(
            width: 335.w,
            height: 65.h,
            padding: EdgeInsets.all(16.r),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: Icon(
                        Icons.power_settings_new_sharp,
                        color: Colors.red,
                        size: 24.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r),
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: const Color(0xFF0C031A),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.10.r,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 165.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.r),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 18.r,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
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
          'Profile',
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
