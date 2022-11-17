import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/image_slider/image_slider.dart';
import 'package:yes_pay_nepal/features/services/Hotel/hotel_page.dart';
import 'package:yes_pay_nepal/features/services/electricity/electricity_page.dart';
import 'package:yes_pay_nepal/features/services/internet/internet_page.dart';
import 'package:yes_pay_nepal/features/services/khanepani/khanepani.dart';

import '../../core/presentation/resources/colors.dart';
import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../services/Cable_care/cable_Care_page.dart';
import '../services/Flight/flight_page.dart';
import '../services/Goverment/goverment_page.dart';
import '../services/cable/tv_page.dart';
import '../wallet/topup_page.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.list_alt,
    Icons.list,
    Icons.account_circle_outlined,
    // AssetImage(UIAssets.getIcon('house.png')),
    // AssetImage(UIAssets.getIcon('transactions.png')),
    // AssetImage(UIAssets.getIcon('preferences.png')),
    // AssetImage(UIAssets.getIcon('account.png')),
    // AssetImage(UIAssets.getIcon('account.png')),
  ];

  final navTitle = <String>[
    "Home",
    "Transactions",
    "Preferences",
    "My Account"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                        ),
                        const SizedBox(
                          width: 130,
                        ),
                        SizedBox(
                            height: 20,
                            child: Image.asset(
                                UIAssets.getDummyImage('logo_home.png'))),
                      ],
                    ),
                    const Icon(
                      Icons.notifications_outlined,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffF8F8F8),
          child: Icon(
            Icons.qr_code_scanner_sharp,
            color: secondaryColor,
          ),
          elevation: 5.0,
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            const color = Colors.white;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 24,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    navTitle[index],
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: color),
                  ),
                )
              ],
            );
          },
          backgroundColor: primaryColor,
          activeIndex: _bottomNavIndex,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          shadow: const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 12,
            spreadRadius: 0.5,
            color: Colors.white,
          ),
        ),
        // AnimatedBottomNavigationBar(
        //   gapWidth: 50,
        //   height: 70,
        //   notchSmoothness: NotchSmoothness.softEdge,
        //   backgroundColor: primaryColor,
        //   icons: iconList,
        //   gapLocation: GapLocation.center,
        //   inactiveColor: Colors.white,
        //   iconSize: 24,
        //   activeIndex: _bottomNavIndex,
        //   onTap: (index) => setState(() => _bottomNavIndex = index),
        //   //other params
        // ),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.mH),
            // margin: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.mH),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(13.0),
                    color: const Color(0xffF8F8F8),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: SC.sW, vertical: SC.sH),
                  margin: const EdgeInsets.symmetric(
                      horizontal: SC.sW, vertical: SC.sH),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Savings",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: secondaryColor),
                              ),
                              Text(
                                "NPR. 3,020.79",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: primaryColor),
                              ),
                            ],
                          ),
                          const Icon(Icons.visibility),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Current Balance",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: secondaryColor),
                              ),
                              Text(
                                "NPR. 20,000.67",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: primaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SBC.lH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _TransactionTypes(
                            iconName: "add_money.png",
                            title: "Add Money",
                          ),
                          _TransactionTypes(
                            iconName: "send_money.png",
                            title: "Send Money",
                          ),
                          _TransactionTypes(
                            iconName: "deposit.png",
                            title: "Wallet to Bank",
                          ),
                        ],
                      ),
                      SBC.lH,
                    ],
                  ),
                ),
                SBC.lH,
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        color: const Color(0xffF8F8F8),
                        child: Image.asset(UIAssets.getDummyImage("Kyc.png"))),
                    SBC.sW,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "KYC Not Submitted",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w600),
                        ),
                        Text("Please fill the KYC form to use our services.",
                            style: Theme.of(context).textTheme.caption),
                      ],
                    ),
                  ],
                ),
                SBC.xxLH,
                SizedBox(
                  width: 500,
                  height: 200,
                  child: ImageSlider(
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: -15,
                    dotSize: 5,
                    images: [
                      Image.asset(
                        UIAssets.getDummyImage("banners1.jpg"),
                        width: double.infinity,
                        height: 0.5 * MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        UIAssets.getDummyImage("banners2.jpg"),
                        width: double.infinity,
                        height: 0.5 * MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 100,
                //   width: double.infinity,
                //   child: Image.asset(UIAssets.getDummyImage("banner.png")),
                // ),
                SBC.lH,
                const _GeneralServices(),
                SBC.lH,
                Text(
                  "Favorite Services",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GeneralServices extends StatelessWidget {
  const _GeneralServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "General Services",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SBC.xLH,
        Container(
          color: const Color(0xffF8F8F8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TopupPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "topup.png",
                          title: "Topup",
                        ));
                  }),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ElectricityPage()));
                      },
                      child: const _ServiceWidgets(
                        image: "electricity.png",
                        title: "Electricity",
                      ),
                    );
                  }),
                  Builder(builder: (context) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InternetPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "internet.png",
                          title: "Internet",
                        ));
                  }),
                  Builder(builder: (context) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const KhanepaniPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "khanepani.png",
                          title: "khanepani",
                        ));
                  }),
                ],
              ),
              SBC.lH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FlightPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "airplane.png",
                          title: "Airlines",
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Tvpage()));
                        },
                        child: const _ServiceWidgets(
                          image: "television.png",
                          title: "Cable",
                        ),
                      );
                    },
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GovermentPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "government.png",
                          title: "Government",
                        ),
                      );
                    },
                  ),
                ],
              ),
              SBC.xxLH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CableCarPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "government.png",
                          title: "Cable Car",
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelPage()));
                        },
                        child: const _ServiceWidgets(
                          image: "government.png",
                          title: "Hotel",
                        ),
                      );
                    },
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "",
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                ],
              ),
              SBC.xxLH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                  const _ServiceWidgets(
                    image: "data-collection.png",
                    title: "Data",
                  ),
                ],
              ),
              SBC.xxLH,
              Center(
                  child: PrimaryButton(
                title: "View More",
                onPressed: (_) {},
                width: 100,
              )),
              SBC.xLH,
            ],
          ),
        ),
      ],
    );
  }
}

class _ServiceWidgets extends StatelessWidget {
  final String image;
  final String title;

  const _ServiceWidgets({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: 30,
            width: 35,
            child: Image.asset(UIAssets.getDummyImage(image))),
        SBC.sH,
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: primaryColor),
        ),
      ],
    );
  }
}

class _TransactionTypes extends StatelessWidget {
  final String title;
  final String iconName;

  const _TransactionTypes({
    required this.iconName,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(UIAssets.getDummyImage(iconName))),
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
