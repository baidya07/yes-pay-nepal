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
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Internet",
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
          padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: const [
                   _Isps(
                    image: 'https://worldlink.com.np/application/files/7515/9341/3883/wlink_logo.png',
                    title: 'WorldLink',
                  ),
                   _Isps(
                     image: 'https://subisu.net.np/assets/images/c07c9d98ada18fb549c8fcf1fcc44755.png',
                     title: 'Subisu',
                   ),
                   _Isps(
                     image: 'https://www.vianet.com.np/wp-content/themes/vianet/images/logo.png',
                     title: 'Vianet',
                   ),
                   _Isps(
                     image: 'https://www.classic.com.np/wp-content/uploads/2020/02/New-CT-logo-Gold.png',
                     title: 'Classictech',
                   ),
                 ],
               ),
              SBC.xLH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _Isps(
                    image: 'https://www.cgnet.com.np/frontend/img/logo/logo.png',
                    title: 'CG Net',
                  ),
                  _Isps(
                    image: 'https://websurfer.com.np/images/websurfer_isp_logo.png',
                    title: 'Websurfer \n Internet',
                  ),
                  _Isps(
                    image: 'http://www.techminds.com.np/wp-content/uploads/2020/08/logo-light.png',
                    title: 'Techminds \n Networks',
                  ),
                  _Isps(
                    image: 'https://admin.dishhome.com.np/uploads/images/1615365178.png',
                    title: 'Dish Home',
                  ),
                ],
              ),
              SBC.xLH,
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 0.1,
            )
          ),
          height: 60,
          width: 60,
          child: CustomCachedNetworkImage(
              image, fit: BoxFit.fitWidth),
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
