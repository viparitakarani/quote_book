/*
*  view_four_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class ViewFourItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 185,
      height: 184,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 185,
            height: 184,
            child: Image.asset(
              "assets/images/bg-photo-7.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}