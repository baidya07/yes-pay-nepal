import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/cached_network_image_builder.dart';

import '../../../core/presentation/resources/size_constants.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        Text(
                          "Internet",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(
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
          padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            children: const[
               _Isps(
                image: 'https://blog.apnic.net/wp-content/uploads/2020/06/WorldLink_white_banner-555x202.png?v=09862861d39bab1f96cc5cc93ff7f9c0',
                title: 'WorldLink',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Isps extends StatelessWidget {
  final String image;
  final String title;
  const _Isps({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
              child: CustomCachedNetworkImage(
                  image, fit: BoxFit.contain,)),
        ),
        SBC.mH,
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
