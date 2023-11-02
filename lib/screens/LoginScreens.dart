import 'package:contact_list/screens/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF8231F7),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 460.h,
              ),
              SizedBox(
                height: 405.h,
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
                          height: 30.h,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 16.r, right: 16.r),
                            child: loginBoxContent(context)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column loginBoxContent(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Email',
            style: TextStyle(
              color: const Color(0xFF0C031A),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.30.r,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email_outlined),
            iconColor: Colors.blueGrey,
            contentPadding: EdgeInsets.fromLTRB(16.r, 0, 0, 0),
            hintText: "Email Address",
            fillColor: const Color(0xffAF6F6F6),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                borderSide: BorderSide(width: 1.w, color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Password',
            style: TextStyle(
              color: const Color(0xFF0C031A),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.30.r,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock),
              iconColor: Colors.blueGrey,
              contentPadding: EdgeInsets.fromLTRB(16.r, 0, 0, 0),
              hintText: "Password",
              fillColor: const Color(0xffAF6F6F6),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(width: 1.w, color: Colors.black)),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText; // Toggle password visibility
                  });
                },
              )),
        ),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            alignment: Alignment.topRight,
            child: Text(
              'Forgot Password ?',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.30.r,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 40.h,
          margin: EdgeInsets.only(left: 16.r, right: 16.r, top: 43.r),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyBottomNavigationBar()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8231F7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            child: Text(
              'Sign In',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.30.r,
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account?',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF0C031A),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.30.r,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: const Color(0xFF8231F7),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.30.r,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
