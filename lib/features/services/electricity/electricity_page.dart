import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';

import '../../../core/presentation/resources/colors.dart';
import '../../../core/presentation/resources/size_constants.dart';

class ElectricityPage extends StatelessWidget {
  const ElectricityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              AppBar(
                title: Text(
                  "Electricity Payment",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                centerTitle: true,
                elevation: 0,
                backgroundColor: primaryColor,
                actions: const [
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              // Positioned(
              //   top: 100,
              //     left: 20,
              //     right: 20,
              //     bottom: 0,
              //     child: Expanded(
              //       child: Container(
              //         height: 50,
              //         width: double.infinity,
              //         padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
              //         margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(15.0),
              //             border: Border.all(
              //               width: 0.1,
              //             )
              //         ),
              //         child: Row(
              //           children: [
              //             Image.asset(UIAssets.getDummyImage('wallet.png'), width: 14, height: 14, color: Colors.black,),
              //           ],
              //         ),
              //       ),
              //     )),
            ]
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
            margin:  const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NEA Counter', style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(onSaved: (_){}, hintTxt: "Select", suffixIcon: Icon(Icons.arrow_drop_down),),
                  SBC.lH,
                  Text('Sc. No.', style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(onSaved: (_){}),
                  SBC.lH,
                  Text('Customer ID', style: Theme.of(context).textTheme.bodyText2),
                  PrimaryTextField(onSaved: (_){}),
                ],
              ),
            ),
          ),
          PrimaryButton(onPressed: (){}, title: 'PROCEED', width: MediaQuery.of(context).size.width /1.1, radius: 14.0),
        ],
      ),
    );
  }
}
