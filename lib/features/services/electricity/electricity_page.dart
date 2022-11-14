import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';

import '../../../core/presentation/resources/colors.dart';
import '../../../core/presentation/resources/size_constants.dart';

class ElectricityPage extends StatelessWidget {
  const ElectricityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
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
                            "Electricity Payment",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                      margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          width: 0.1,
                        )
                      ),
                      child: Row(
                        children: [
                          Image.asset(UIAssets.getDummyImage('wallet.png'), width: 14, height: 14, color: Colors.white,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
        margin:  const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Text('NEA Counter', style: Theme.of(context).textTheme.bodyText2),
            PrimaryTextField(onSaved: (_){}, hintTxt: "Select", suffixIcon: Icon(Icons.arrow_drop_down),),
          ],
        ),
      ),
    );
  }
}
