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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "₹" + previousRiderEarnings,
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,

                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Total Earnings",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,

                ),
              ),

              SizedBox(
                height: 15,
                width: 170,
                child: Divider(
                  color: Colors.white54,
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
                  color: Colors.white54,
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
