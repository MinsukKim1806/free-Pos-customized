import 'package:flutter/material.dart';

Container manuContainer(){
  return Container(color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible (
          flex: 10,
          child: Container(color: Colors.white,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Starter',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Main',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Desert',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Drinks',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Alcohols',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
        const SizedBox(height: 10,),
        Flexible (
          flex: 85,
          child: Container(
            color: Colors.white,
          child: const Center(
            child: Text(
              'Menus',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        ),
      ],
    )
  );
}
  