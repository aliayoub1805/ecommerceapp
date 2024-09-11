

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '';
import 'widgets/banner_widgets.dart';
import 'widgets/search_input_widget.dart';
import 'widgets/welcom_text_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 15,
      ),
      child: Column(
        children: [
          /*
          Row(
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
          ),
          */
          WelcomTextWidget(),
          SizedBox(height: 14), // إضافة بعض التباعد بين العناصر
          /*
          ClipRRect(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search Product',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon:
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 10,
                    height: 10,
                  ),

                ),
              ),
            ),
          ),

           */
          SearchInputWidget(),
          SizedBox(height: 10,),
          BannerWidget(),
        ],
      ),
    );
  }
}