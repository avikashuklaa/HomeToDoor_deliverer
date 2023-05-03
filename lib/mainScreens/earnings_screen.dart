import 'package:flutter/material.dart';
import 'package:hometodoor_deliverer/global/global.dart';
import 'package:hometodoor_deliverer/mainScreens/home_screen.dart';

class EarningsScreen extends StatefulWidget {

  @override
  State<EarningsScreen> createState() => _EarningsScreenState();
}

class _EarningsScreenState extends State<EarningsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf6f9),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "₹" + previousRiderEarnings,
                style: TextStyle(
                  fontSize: 70,
                  color: Color(0xff006d77),

                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Total Earnings",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff006d77),
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,

                ),
              ),

              SizedBox(
                height: 15,
                width: 170,
                child: Divider(
                  color: Color(0xff006d77),
                  thickness: 1.5,
                ),
              ),
              SizedBox(height: 40,),

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (c) =>const HomeScreen()));
                },
                child: Card(
                  color: Color(0xff2ec4b6),
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 140),
                  child: ListTile(
                    //leading:
                    title:const Text(
                      "Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
