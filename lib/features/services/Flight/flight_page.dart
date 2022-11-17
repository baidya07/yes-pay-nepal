import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';
import '../../../core/presentation/widget/cached_network_image_builder.dart';
import '../../../core/presentation/widget/forms/buttons.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      width: 270,
                    ),
                    const Icon(
                      Icons.flight_takeoff,
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
        body: SingleChildScrollView(
          child: Column(
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                            Container(
                              child: Text(
                                "ROUND TRIP",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 20, color: Colors.black),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 165.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              PrimaryTextField(
                                onSaved: (_) {},
                                hintTxt: 'Departure',
                                suffixIcon: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 165.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.grey,
                              )),
                          child: Column(
                            children: <Widget>[
                              PrimaryTextField(
                                onSaved: (_) {},
                                hintTxt: 'Return',
                                suffixIcon: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SBC.xLH,
                    Column(
                      children: <Widget>[
                        PrimaryTextField(
                          onSaved: (_) {},
                          hintTxt: "1 Adult",
                        )
                      ],
                    ),
                    SBC.xLH,
                    Center(
                      child: PrimaryButton(
                        title: "SEARCH FLIGHT",
                        onPressed: (_) {},
                        width: 350,
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
      ),
    );
  }
}
