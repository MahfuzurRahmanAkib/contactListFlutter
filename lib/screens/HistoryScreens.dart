import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HomeScreens.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HistoryState();
  }
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<String> items = ["TopUp", "Withdraw", "Transfer"];
    int current = 0;
    TabController tabController =
        TabController(length: items.length, vsync: this);

    return DefaultTabController(
      length: items.length,
      initialIndex: current,
      child: Scaffold(
        backgroundColor: const Color(0xFF8231F7),
        appBar: myAppBar(),
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            SizedBox(
              height: 800.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0.r),
                  topRight: Radius.circular(20.0.r),
                ),
                child: Container(
                  height: 740.h,
                  color: const Color(0xFFF6F6F6),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.r, right: 16.r),
                        child: Column(
                          children: [
                            searchbarWithIcon(),
                            SizedBox(
                              height: 10.h,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)),
                              elevation: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0.r),
                                  child: TabBar(
                                    controller: tabController,
                                    labelPadding:
                                        EdgeInsets.symmetric(horizontal: 17.r),
                                    tabs: [
                                      Tab(
                                        text: items[0],
                                      ),
                                      Tab(
                                        text: items[1],
                                      ),
                                      Tab(
                                        text: items[2],
                                      ),
                                    ],
                                    labelColor: const Color(0xFF3B3446),
                                    labelStyle: TextStyle(
                                      color: const Color(0xFF3B3446),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    unselectedLabelColor: Colors.grey,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: const Color(0x198231F7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 2.r),
                              height: 507.h,
                              width: double.infinity,
                              child: Expanded(
                                  child: Flexible(
                                child: SizedBox(
                                  height: 400.h,
                                  width: double.infinity,
                                  child: TabBarView(
                                    controller: tabController,
                                    children: [
                                      ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            return Card(
                                              margin: EdgeInsets.all(2.r),
                                              child: ListTile(
                                                  title: topUpCardContent()),
                                            );
                                          }),
                                      ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            return Card(
                                              margin: EdgeInsets.all(2.r),
                                              child: ListTile(
                                                  title: topUpCardContent()),
                                            );
                                          }),
                                      ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            return Card(
                                              margin: EdgeInsets.all(2.r),
                                              child: ListTile(
                                                  title: topUpCardContent()),
                                            );
                                          })
                                    ],
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row searchbarWithIcon() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.r, right: 16.r),
          height: 48.h,
          width: 260.w,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for the city or airport',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: 14.sp,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        Container(
            width: 48.w,
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 12.r),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF7526E8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ))
      ],
    );
  }

  Container topUpCardContent() {
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
            height: 4.h,
          ),
          Container(
            padding: EdgeInsets.only(top: 5.r, bottom: 5.r),
            height: 2.h,
            width: double.infinity,
            color: Colors.white10,
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
          'History',
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
