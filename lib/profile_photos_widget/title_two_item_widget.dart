/*
*  title_two_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class TitleTwoItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 375,
      height: 37,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Opacity(
              opacity: 0.4,
              child: Text(
                "TOMORROW",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  letterSpacing: -0.08,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}