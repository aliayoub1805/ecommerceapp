
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';

class WelcomTextWidget extends StatelessWidget {
  const WelcomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hello',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 24, // الحجم أكبر
          height: 24, // الحجم أكبر
          child: SvgPicture.asset('assets/icons/cart.svg'),
        ),
      ],
    );
  }
}
