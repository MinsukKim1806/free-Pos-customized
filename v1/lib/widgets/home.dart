import 'package:flutter/material.dart';

import 'containers/menu.dart';
import 'containers/orders.dart';

Container customMainContainer(){
  return Container(color: Color.fromARGB(255, 239, 240, 240),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible (
          flex: 60,
          child: manuContainer(),
        ),
        SizedBox(width: 10,),
        Flexible (
          flex: 35,
          child: ordersContainer(),
        ),
      ],
    )
  );
}