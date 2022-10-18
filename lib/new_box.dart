import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class newbox extends StatelessWidget {
  final child;
  const newbox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5, 5)),
            const BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 15,
                offset: Offset(-5, -5))
          ]),
    );
  }
}
