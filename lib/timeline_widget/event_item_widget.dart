/*
*  event_item_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/event_detail_widget/event_detail_widget.dart';
import 'package:quote_book/values/values.dart';


class EventItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      constraints: BoxConstraints.expand(height: 336),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 31,
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
            top: 84,
            right: 0,
            bottom: 52,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/bg-event-temp-2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 20,
                  top:0,
                  right: 20,
                  bottom: 22,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2),
                          child: Text(
                            "3/13/2050",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.accentText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Guess who’s back?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: AppColors.accentText,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            height: 1,
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
            left: 0,
            top: 15,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 82,
                  margin: EdgeInsets.only(left: 9, right: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 82,
                        height: 82,
                        child: Image.asset(
                          "assets/images/avatar-2.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        width: 219,
                        height: 32,
                        margin: EdgeInsets.only(left: 8, top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Laika created a new event near you",
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
                                    "Back from the space trip! Come everyone.",
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
                Spacer(),
                Container(
                  height: 53,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryElement,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "John, Joe and Jack & 18k are coming",
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
        ],
      ),
    );
  }
}