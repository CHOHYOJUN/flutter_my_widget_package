import 'package:flutter/material.dart';

class DefaultFloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DefaultFloatingButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}