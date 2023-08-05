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
          flex: 65,
          child: menuContainer(),
        ),
        SizedBox(width: 5,),
        Flexible (
          flex: 35,
          child: ordersContainer(),
        ),
        SizedBox(width: 5,),
      ],
    )
  );
}