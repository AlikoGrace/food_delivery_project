import 'package:flutter/material.dart';
import 'app_styles.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Container(
          child: Row(
            children: [
              Column(
                children: [Text('Country'), Text('Bolgatanga')],
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: kMainColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
