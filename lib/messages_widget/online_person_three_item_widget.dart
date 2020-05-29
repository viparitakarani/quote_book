/*
*  online_person_three_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class OnlinePersonThreeItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 60,
      height: 75,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 11,
            right: 10,
            bottom: 0,
            child: Text(
              "Gideon",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: -1,
            top: -1,
            right: -1,
            child: Image.asset(
              "assets/images/ui-avatar-small-copy-2.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}