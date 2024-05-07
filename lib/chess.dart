import 'package:flutter/material.dart';

class Chess extends StatelessWidget {
  const Chess({super.key});

  Widget board() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(8, (index) {
        return index % 2 == 0
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(8, (index) {
                  return Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: index % 2 == 0 ? Colors.white : Colors.black,
                    ),
                  );
                }),
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(8, (index) {
                  return Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: index % 2 != 0 ? Colors.white : Colors.black,
                    ),
                  );
                }),
              );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: board(),
        ),
      ),
    );
  }
}
