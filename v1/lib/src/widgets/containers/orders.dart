import 'package:flutter/material.dart';

Container ordersContainer(){
  return Container(color: Color.fromARGB(255, 239, 240, 240),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible (
          flex: 90,
          child: Container(color: Colors.white,
            child: Container(
            color: Colors.white,
            child: const Center(
                child: Text(
                  'TableOrders',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ),
        // const SizedBox(height:10),
        Flexible (
          flex: 10,
          child: Container(color: Color.fromARGB(255, 239, 240, 240),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                    'Cancel',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                    'Pay',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ],
    )
  );
}
  