import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {

    final String text;
    final Function onPress;

    const BotonAzul({super.key, required this.text, required this.onPress});

    @override
    Widget build(BuildContext context) {

        return MaterialButton(
            elevation: 2,
            highlightElevation: 5,
            color: Colors.blue,
            shape: const StadiumBorder(),
            onPressed: () => onPress(),
            child: Container(
                width: double.infinity,
                height: 55,
                child: Center(
                    child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 17)),
                ),
            ),
        );

    }

}