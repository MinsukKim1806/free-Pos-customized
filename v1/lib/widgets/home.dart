import 'package:flutter/material.dart';

import 'containers/menu.dart';
import 'containers/orders.dart';

// Container customMainContainer(){
//   return Container(color: Color.fromARGB(255, 239, 240, 240),
//     child: const Center(
//       child: Text(
//         'Home222',
//         style: TextStyle(fontSize: 35),
//       ),
//     ),
//   );
// }

Container customMainContainer(){
  return Container(color: Color.fromARGB(255, 239, 240, 240),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        manuContainer(),
        SizedBox(width: 10,),
        ordersContainer(),
      ],
    )
  );
}