import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/resources/size_constants.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key);

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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      'Search Hotel',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
            margin:
                const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SC.mW,
                vertical: SC.mH,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Locaton/Hotel Name',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    suffixIcon: Icon(Icons.location_on),
                  ),
                  SBC.lH,
                  Text('Check-in',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  SBC.lH,
                  Text('Check-out',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  SBC.lH,
                  Text('Guest', style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    hintTxt: '2 Adults',
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  SBC.lH,
                  Text('Select Room',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    hintTxt: '1 Room',
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  SBC.lH,
                  PrimaryButton(
                    onPressed: () {},
                    title: 'SEARCH',
                    radius: 20.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
