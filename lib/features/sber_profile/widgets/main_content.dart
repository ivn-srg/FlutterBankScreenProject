import 'package:flutter/material.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("У вас подключено")],
        )
      );
  }
}