/*
*  tab_bar_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quote_book/messages_widget/messages_widget.dart';
import 'package:quote_book/profile_widget/profile_widget.dart';
import 'package:quote_book/timeline_widget/timeline_widget.dart';


class TabBarWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}


class _TabBarWidgetState extends State<TabBarWidget> {
  List<Widget> _tabWidgets = [
    TimelineWidget(),
    MessagesWidget(),
    ProfileWidget(),
  ];
  int _currentIndex = 0;
  
  void _onTabChanged(int index) => this.setState(() => _currentIndex = index);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: _tabWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 140, 28, 140),
        currentIndex: _currentIndex,
        onTap: (index) => this._onTabChanged(index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Hot Items",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-3.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Quotes",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-6.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Profile",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}