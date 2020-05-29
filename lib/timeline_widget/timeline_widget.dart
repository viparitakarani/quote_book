/*
*  timeline_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quote_book/timeline_widget/advertisement_item_widget.dart';
import 'package:quote_book/timeline_widget/event_item_widget.dart';
import 'package:quote_book/timeline_widget/lifetime_event_item_widget.dart';
import 'package:quote_book/timeline_widget/quote_item_widget.dart';
import 'package:quote_book/timeline_widget/quote_two_item_widget.dart';
import 'package:quote_book/values/values.dart';


class TimelineWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Popular Quotes",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Lato",
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.01413, 0.51498),
              end: Alignment(1.01413, 0.48502),
              stops: [
                0,
                1,
              ],
              colors: [
                Color.fromARGB(255, 48, 187, 165),
                Color.fromARGB(255, 140, 28, 140),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 244),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    switch(index) { 
                       case 0: { 
                          // statements; 
                          return QuoteItemWidget();
                       } 
                       break; 
                      
                       case 1: { 
                          //statements; 
                          return QuoteTwoItemWidget();
                       } 
                       break; 

                       case 2: { 
                          //statements; 
                          return LifetimeEventItemWidget();
                       } 
                       break; 

                       case 3: { 
                          //statements; 
                          return EventItemWidget();

                       } 
                       break; 

                       case 4: { 
                          //statements; 
                          return AdvertisementItemWidget();
                       } 
                       break; 
                    } 
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}