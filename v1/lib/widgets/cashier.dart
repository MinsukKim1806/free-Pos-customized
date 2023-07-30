import 'package:flutter/material.dart';

Container customCashierContainer(){
 return Container(color: Color.fromARGB(255, 239, 240, 240),
    child: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible (
          flex: 80,
          child: Container(
            color: Colors.white,
          child: const Center(
            child: Text(
              'List of recipts for the day',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        ),
        SizedBox(height: 10,),
        Flexible (
          flex: 10,
          child: Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Print daily recipts',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
        ),
      ],
    )
  );
}
  