import 'package:flutter/material.dart';

Container manuContainer(){
  return Container(color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(color: Colors.white,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Starter',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Main',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Desert',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Drinks',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Alcohols',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(color: Colors.pink,
          child: const Center(
            child: Text(
              'Menus',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ],
    )
  );
}
  