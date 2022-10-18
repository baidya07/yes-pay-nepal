import 'package:flutter/material.dart';

import '../../../core/presentation/resources/colors.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/cached_network_image_builder.dart';

class KhanepaniPage extends StatelessWidget {
  const KhanepaniPage({Key? key}) : super(key: key);

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
                          "Khanepani",
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
            mainAxisSize: MainAxisSize.min,
            children: [
              SBC.xLH,
              Container(
                decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 0.1,
            )
      ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SBC.mW,
                    const _Khanepani(title: "Community \n khanepani", image: "data:image/png;base64,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",),
                    SBC.mW,
                    const _Khanepani(title: "KUKL", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjrSQkI08Tv4eadvR0pJjeqvqMk5fP9T1GwA&usqp=CAU",),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Khanepani extends StatelessWidget {
  final String image;
  final String title;
  const _Khanepani({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
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
    )
      ],
    );
  }
}
