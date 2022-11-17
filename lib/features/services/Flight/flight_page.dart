import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/cached_network_image_builder.dart';
import '../../../core/presentation/widget/forms/buttons.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({Key? key}) : super(key: key);

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
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SC.mW,
                vertical: SC.mH,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flight',
                    style: TextStyle(
                      fontSize: SC.xLH,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SC.mW,
                vertical: SC.mH,
              ),
              child: Column(
                children: [
                  Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "ONE WAY",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontSize: 20,
                                    ),
                          ),
                          Container(
                            child: Text(
                              "ROUND TRIP",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SBC.xLH,
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.grey,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 35,
                            top: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "From",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                "Select City",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 90,
                            top: 5,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "TO",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                "Select City",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SBC.xLH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 165.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            )),
                        child: Center(
                          child: Text(
                            "Departure",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 165.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            )),
                        child: Center(
                          child: Text(
                            "Return",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      )
                    ],
                  ),
                  SBC.xLH,
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26)),
                      ),
                      Positioned(
                        top: 5.0,
                        left: 30.0,
                        right: 0.0,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Text(
                                  'No. of Travellers',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SBC.sW,
                  Center(
                    child: PrimaryButton(
                      title: "SEARCH FLIGHT",
                      onPressed: (_) {},
                      width: 450,
                    ),
                  ),
                  SBC.xLHP,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: SC.mW,
                      vertical: SC.mH,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "More Flight Services",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
