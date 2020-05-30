/*
*  news_two_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/values/values.dart';


class QuoteTwoItemWidget extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    

    return Container(
      constraints: BoxConstraints.expand(height: 470),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 1,
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
            bottom: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 250,
                  child: Image.asset(
                    "assets/images/bg-quote-temp.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 20, top: 18, right: 14),
                  child: Text(
                    '"Logic will get you from A to B. Imagination will take you everywhere."',
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
                Spacer(),
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
                                "Varth Dader & 3k like this",
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
                            margin: EdgeInsets.only(right: 20),
                            child:  Opacity(
                              opacity: 0.2,
                              child: Text(
                                        "Comments disabled by force",
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
            left: 10,
            top: 16,
            right: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    "assets/images/icon-avatar-2.png",
                    fit: BoxFit.none,
                  ),
                ),
                Container(
                  width: 127,
                  height: 32,
                  margin: EdgeInsets.only(left: 9, top: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Albert Einstain",
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