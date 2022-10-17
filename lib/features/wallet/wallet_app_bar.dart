import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/core/presentation/resources/colors.dart';

class WalletAppbar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final Widget? suffixIcon;
  const WalletAppbar({
    required this.title,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: (){
          context.router.pop();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
      ),
      elevation: 0.2,
      titleSpacing: 0,
      backgroundColor: Colors.white,
      title:  Text(
        '$title',
        style: Theme.of(context).textTheme.headline6!.copyWith(color: secondaryColor),
      ),
      actions: [
        // suffixIcon: Icon(Icons.info_outline),
      ],
    );
  }

  @override

  Size get preferredSize => const Size(double.infinity,kToolbarHeight);
}