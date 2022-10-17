import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';
import 'package:yes_pay_nepal/core/presentation/resources/ui_assets.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/buttons.dart';
import 'package:yes_pay_nepal/core/presentation/widget/forms/textfields.dart';
import 'package:yes_pay_nepal/features/home/home_page.dart';
import 'package:yes_pay_nepal/features/wallet/topup_page.dart';

import '../../../../core/presentation/resources/size_constants.dart';
import '../../../../core/presentation/routes/router.gr.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
            margin: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    height: 70,
                    margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                      child: Image.asset(UIAssets.getDummyImage('Logo.png'))),
                ),
                SBC.xLH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SIGN IN',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.secondaryColor(1)),
                        ),
                        SBC.mH,
                        Text(
                          'Login to your account',
                          style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.secondaryColor(0.5)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot',
                          style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.primaryColor(0.7)),
                        ),
                        SBC.mH,
                        Text(
                          'Password?',
                          style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.primaryColor(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
                SBC.mH,
                PrimaryTextField(onSaved: (_){}, hintTxt: "Email/ Mobile Number",),
                SBC.mH,
                PrimaryTextField(onSaved: (_){}, hintTxt: "Password", suffixIcon: const Icon(Icons.visibility_off),),
                SBC.mH,
                Row(
                  children: [
                    const Icon(Icons.check_box_outline_blank),
                    SBC.sW,
                    Text('Remember Me', style: Theme.of(context).textTheme.caption,)
                  ],
                ),
                SBC.xLH,
                Builder(
                  builder: (context)=> PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                      // context.router.push(TopupRoute());//autoroute
                    },
                      title: "Sign in", width: 100, color: Color(0xff070B86)),
                ),
                SBC.xLH,
                Text('Or login with', style: Theme.of(context).textTheme.caption,),
                SBC.sH,
                 SizedBox(
                  height: 30,
                  child: Image.asset(UIAssets.getDummyImage('googlefb.png')),
                ),
                SBC.xLH,
                PrimaryOutlinedButton(onPressed: (_){}, title: "Create Account", width: 100, color: Color(0xffF33600),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
