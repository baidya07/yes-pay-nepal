import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/resources/size_constants.dart';

import '../../../core/presentation/widget/cached_network_image_builder.dart';

class Tvpage extends StatelessWidget {
  const Tvpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: const Text("Goverment Payment"),
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
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "TV",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.search_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              border: Border.all(
                width: 0.1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SBC.xLH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    _Cablepay(
                      title: "Dish Home \n  Payment",
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/DishHome_Logo.svg/800px-DishHome_Logo.svg.png',
                    ),
                    _Cablepay(
                      title: "SIM \n TV",
                      image: 'https://nepal.gov.np/splash/nepal-govt.png',
                    ),
                    _Cablepay(
                      title: "Clear \n TV",
                      image: 'https://nepal.gov.np/splash/nepal-govt.png',
                    ),
                    _Cablepay(
                      title: "Mero \n TV",
                      image: 'https://merotv.com.np/images/logo_merotv.png',
                    ),
                  ],
                ),
                SBC.xLH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    _Cablepay(
                      title: "Birat \n Cable",
                      image: 'https://nepal.gov.np/splash/nepal-govt.png',
                    ),
                    _Cablepay(
                      title: "MAX \n TV",
                      image: 'https://nepal.gov.np/splash/nepal-govt.png',
                    ),
                    _Cablepay(
                      title: "WorldLink \n TV",
                      image:
                          'https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png',
                    ),
                    _Cablepay(
                      title: "Prabhau \n TV",
                      image: 'https://nepal.gov.np/splash/nepal-govt.png',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Cablepay extends StatelessWidget {
  final String image;
  final String title;
  const _Cablepay({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.1,
              )),
          height: 60,
          width: 60,
          child: CustomCachedNetworkImage(image, fit: BoxFit.fitWidth),
        ),
        SBC.mH,
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
