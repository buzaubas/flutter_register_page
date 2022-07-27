import 'package:flutter/material.dart';

import './formCard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 30, 52, 84),
            Color.fromARGB(255, 55, 107, 154),
          ],
        )),
        child: Center(
          child: Container(
            // width: 300,
            // height: 500,
            // margin: const EdgeInsets.only(left: 40.0, right: 40.0),
            // padding: EdgeInsets.all(28.0),
            // decoration: new BoxDecoration(
            //     color: const Color(0xFF0E3311), //here i want to add opacity
            //     border: new Border.all(
            //       color: Colors.black54,
            //     ),
            //     borderRadius: new BorderRadius.only(
            //         topLeft: const Radius.circular(40.0),
            //         topRight: const Radius.circular(40.0),
            //         bottomLeft: const Radius.circular(40.0),
            //         bottomRight: const Radius.circular(40.0))),
            child: LoginWidget(),
          ),
        ));
  }
}
