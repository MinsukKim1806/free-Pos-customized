import 'package:flutter/material.dart';

Container ordersContainer(){
  return Container(color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(color: Colors.blueGrey,
          child: const Center(
            child: Text(
              'TableOrders',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
        SizedBox(height:10),
        Container(color: Colors.pink,
          child: const Center(
            child: Text(
              'PaymentButtons',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ],
    )
  );
}
  