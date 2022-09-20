import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        ),
        const Center(
          child: Text(
            'Stock Updating',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        ),
        const Center(
          child: CircularProgressIndicator(
            semanticsLabel: 'Linear progress indicator',
          ),
        ),
        const SizedBox(
          height: 120,
        ),
        const SizedBox(
          width: 280,
          child: Center(
            child: Text(
              'Wait!, Stock is updating. You just need to wait for an hours',
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: const LinearProgressIndicator(
            minHeight: 8.0,
          ),
        )
      ],
    ));
  }
}
