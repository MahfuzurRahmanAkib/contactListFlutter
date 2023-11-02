import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WithdrawState();
  }
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
            cardContent(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Container cardContent() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Set the border radius to 20
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
                  const Padding(
                      padding: EdgeInsets.only(
                        right: 8,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.arrow_forward_ios_rounded),
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
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              "SA308286",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3b3446),
                                height: 16 / 12,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "1753377562",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0c031a),
                              height: 22 / 16,
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'TXN: PQRS4542120',
                        style: TextStyle(
                          color: Color(0xFF3B3446),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Text(
                "\$500.00",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  height: 22 / 16,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Container(color: Colors.white12, height: 2, width: double.infinity),
          const SizedBox(
            height: 4,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 16,
                    color: Color(0xff6a6472),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "14.07.23, 10:15 PM",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6a6472),
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Commission:',
                      style: TextStyle(
                        color: Color(0xFF3B3446),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF0C031A),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '\$25.00',
                      style: TextStyle(
                        color: Color(0xFF0C031A),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
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
