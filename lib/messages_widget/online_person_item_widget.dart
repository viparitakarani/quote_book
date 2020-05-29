/*
*  online_person_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class OnlinePersonItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 60,
      height: 75,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 3,
            right: 2,
            bottom: 0,
            child: Text(
              "Mrs. Doya",
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
              "assets/images/avatar-temp-2.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}