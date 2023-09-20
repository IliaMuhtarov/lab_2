import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  late Color _buttonColor;

  void initState() {
    _buttonColor =  Colors.green.shade900;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            {setState(() {
              if (_buttonColor == Colors.green.shade900) {
                _buttonColor = Colors.green;
              } else {
                _buttonColor = Colors.green.shade900;
              }
            });}
            {Navigator.pop(context);};
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              _buttonColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: const BorderSide(
                  width: 3,
                  color: Color.fromRGBO(80, 80, 80, 9),
                ),
              ),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                // <-- Icon
                Icons.android,
                size: 24.0,
              ),
              SizedBox(
                width: 2,
              ),
              Text('4 задание'), // <-- Text
              SizedBox(
                width: 5,
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
