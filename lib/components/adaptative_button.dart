import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  const AdaptativeButton({this.label, this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              label!,
              style: const TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        : TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary),
            ),
            onPressed: onPressed,
            child: Text(
              label!,
              style: const TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          );
  }
}
