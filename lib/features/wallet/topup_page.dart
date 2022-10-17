import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';
import 'package:yes_pay_nepal/features/wallet/wallet_app_bar.dart';

import '../../core/presentation/resources/size_constants.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
                          onTap: (){
                            Navigator.pop(context);
                          },
                            child: Icon(Icons.arrow_back_ios, color: primaryColor,)),
                        Text("Topup", style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryColor),),
                      ],
                    ),
                    Icon(Icons.info_outline, color: primaryColor,),
                  ],
                ),
              ),
            )
          ],
        ),
        //     suffix icon:
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
            margin: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: const Color(0xffF8F8F8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(UIAssets.getDummyImage("wallet.png"), height: 35),
                          SBC.sW,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('NPR', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryColor)),
                                  SBC.sW,
                                  Text('XXXX.XX', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: primaryColor)),
                                ],
                              ),
                              Text('Balance', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryColor)),
                            ],
                          ),
                        ],
                      ),
                      const Center(child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.visibility),
                      ))
                    ],
                  ),
                ),
                SBC.mH,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mobile Number', style: Theme.of(context).textTheme.bodyText2,),
                    PrimaryTextField(onSaved: (_){}, suffixIcon: Image.asset(UIAssets.getDummyImage("contact.png"), height: 25),),
                    Row(
                      children: [
                        SizedBox(
                            height: 30,
                            child: Image.asset(UIAssets.getDummyImage("ntc_logo.png"))),
                        SBC.sW,
                        Text('NTC Prepaid', style: Theme.of(context).textTheme.caption,),
                      ],
                    )
                  ],
                ),
                SBC.lH,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount NPR', style: Theme.of(context).textTheme.bodyText2,),
                    PrimaryTextField(onSaved: (_){})
                  ],
                ),
                SBC.xLH,
                PrimaryButton(onPressed: (){}, title: "PROCEED", width: 100,),
                SBC.xLH,
                Container(
                  height: 50,
                  color: const Color(0xffF8F8F8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('My Payments (0)', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryColor),),
                      ),
                      Icon(Icons.keyboard_arrow_up, color: secondaryColor,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),


      ),
    );
  }
}
