import 'package:flutter/material.dart';

Container customSettingsContainer(){
  return Container(color: Color.fromARGB(255, 239, 240, 240),
    child: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible (
          flex: 40,
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
                'Add Menu',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Flexible (
          flex: 40,
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
                'Update Menu',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Flexible (
          flex: 40,
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
                'Delete Menu',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
      ],
    )
  );
}
  