import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const Badge({
    Key? key,
    required this.child,
    required this.value,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            constraints: const BoxConstraints(minHeight: 16, minWidth: 16),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: color ?? Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
