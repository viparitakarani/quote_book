/*
*  welcome_widget.dart
*  QuoteBook
*
*  Created by Agus Yudiana.
*  Copyright © 2018 Agus Yudiana. All rights reserved.
    */

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:quote_book/tab_bar_widget/tab_bar_widget.dart';
import 'package:quote_book/values/values.dart';
import 'package:quote_book/welcome_widget/welcome_widget_animation1.dart';


class WelcomeWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _WelcomeWidgetState();
}


class _WelcomeWidgetState extends State<WelcomeWidget> with SingleTickerProviderStateMixin {
  AnimationController logoImageAnimationController;
  
  @override
  void initState() {
  
    super.initState();
    this.logoImageAnimationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    this.startAnimationOne();
  }
  
  @override
  void dispose() {
  
    super.dispose();
    this.logoImageAnimationController.dispose();
  }
    
  void onEnterPressed(BuildContext context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabBarWidget()));
  
  void startAnimationOne() => this.logoImageAnimationController.forward();
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.31089, 1.09827),
            end: Alignment(0.68911, -0.09827),
            stops: [
              0,
              1,
            ],
            colors: [
              Color.fromARGB(255, 49, 187, 165),
              Color.fromARGB(255, 140, 28, 140),
            ],),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Animated Logo
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: WelcomeWidgetAnimation1(
                  animationController: this.logoImageAnimationController,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(51, 0, 0, 0),
                          offset: Offset(0, 20),
                          blurRadius: 25,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),),
            //QuoteBook 
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Quotebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 42,
                    letterSpacing: -1,
                  ),
                ),
              ),),
            //Tag Line
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "It's the line you'll remamber\nnow and forever.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),),
            Spacer(),
            //Button
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 110, right: 30, bottom: 85),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //Button Sign Up

                  //Button Login
                  Container(
                    width: 148,
                    height: 60,
                    child: FlatButton(
                      onPressed: () => this.onEnterPressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      textColor: Color.fromARGB(255, 219, 104, 110),
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/icon-log-in.png",),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "ENTER",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 219, 104, 110),
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),),
                ],
              ),),
            //Copyright
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "© 2020 Agus Yudiana Studio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),),],
        ),
      ),
    );
  }
}