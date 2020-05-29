/*
*  news_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class QuoteItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      constraints: BoxConstraints.expand(height: 419),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryBackground,
              ),
              child: Container(),
            ),
          ),
          Positioned(
            left: 0,
            top: 80,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/bg-quote-temp-2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 18, right: 20, bottom: 22),
                    child: Text(
                      '“We cannot be more sensitive to pleasure without being more sensitive to pain.”',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.42857,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 59,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryElement,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 19,
                        height: 19,
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/images/icon-like.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Spacewoman & 185k like this",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 19,
                        height: 19,
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset(
                          "assets/images/icon-comment.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "21k comments",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 9,
            top: 14,
            right: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 82,
                  height: 82,
                  child: Image.asset(
                    "assets/images/icon-avatar.png",
                    fit: BoxFit.none,
                  ),
                ),
                Container(
                  width: 83,
                  height: 32,
                  margin: EdgeInsets.only(left: 8, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Allan Watts",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 15, 15),
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Today, 1:45 PM",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}