/*
*  view_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/profile_photos_widget/profile_photos_widget.dart';
import 'package:quote_book/values/values.dart';


class ViewItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 123,
      height: 122,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: 
          Container(
            width: 123,
            height: 122,
            child: Image.asset(
              "assets/images/photo-3.png",
              fit: BoxFit.none,
            ),
          ),
          ),
        ],
        
      ),
    );
  }
}