import 'package:flutter/material.dart';

Container ordersContainer(){
  return Container(color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible (
          flex: 80,
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
        const SizedBox(height:10),
        Flexible (
          flex: 10,
          child: Container(color: Colors.white,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                    'Cancel',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
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
  