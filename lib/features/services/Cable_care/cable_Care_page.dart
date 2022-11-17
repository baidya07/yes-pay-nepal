import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';

import '../../../core/presentation/resources/colors.dart';
import '../../../core/presentation/resources/size_constants.dart';

class CableCarPage extends StatelessWidget {
  const CableCarPage({Key? key}) : super(key: key);

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
                      'Cable Care',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    const Icon(
                      Icons.info_outline_rounded,
                    ),
                  ],
                ),
              ),
            )
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
                  horizontal: SC.mW, vertical: SC.mH),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: Text(
                      'The Validity ticket shall be 3 days from the date of purchase \n For Children below 3ft no charges applicable\n Valid Student ID Card compulosory before boarding\n Proof of age compulosory before boarding for Senior Citizen\n Ticket once purchase are non-refundable',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            letterSpacing: -1,
                            wordSpacing: -1,
                            fontSize: 11,
                          ),
                    ),
                  ),
                  SBC.lH,
                  Text('Cable Car',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(
                    onSaved: (_) {},
                    hintTxt: "Manakamana Cable Car",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  SBC.lH,
                  Text('Full Name',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(onSaved: (_) {}),
                  SBC.lH,
                  Text('MobileNumber',
                      style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(onSaved: (_) {}),
                  SBC.lH,
                  Text(
                    "Email (Option)",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  PrimaryTextField(onSaved: (_) {}),
                  SBC.lH,
                  Text(
                    "Travellers",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  PrimaryTextField(
                    onSaved: (_) {},
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  SBC.lH,
                  PrimaryButton(
                      onPressed: () {},
                      title: 'HAVE A PROMO CODE?',
                      width: MediaQuery.of(context).size.width / 9,
                      radius: 20.0),
                  SBC.lH,
                  PrimaryButton(
                      onPressed: () {},
                      title: 'PROCEED',
                      width: MediaQuery.of(context).size.width / 1.1,
                      radius: 14.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
