import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key:key);

  @override
  State< HomeView> createState () => _HomeViewState ();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child:
            badges.Badge(
              badgeContent: Text('2'),
              badgeAnimation: badges.BadgeAnimation.scale(
                animationDuration: Duration(milliseconds:800),),
              child: Icon(Icons.access_alarms_sharp),
            ),
          ),
          SizedBox(width: 20,),
          Center(
            child:
            badges.Badge(
              badgeContent: Text('2'),
              badgeAnimation: badges.BadgeAnimation.scale(
                animationDuration: Duration(milliseconds:800),),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PinCodeTextField(
                  appContext: context,
                  length: 5,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.cyan,
                  obscureText: true,
                  enabled: true,
                  obscuringCharacter: '',
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,

                    inactiveFillColor: Colors.amber,

                    inactiveColor: Colors.purple,

                    activeFillColor: Colors.brown,

                    selectedColor: Colors.pinkAccent,



                  ),
          onChanged: (value){

          },
          ),
            ]
          ),
        ),
      ),
    );
  }
}
