import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF00cdbc),
        body: Align(
          alignment: const Alignment(-0.20, -0.20),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                filterQuality: FilterQuality.low,
                'assets/images/img2.jpg',
                fit: BoxFit.cover,
                color: const Color(0xFF00cdbc),
                colorBlendMode: BlendMode.dstIn,
              ),
              ElevatedButton(
                  onPressed: () {
                    _showAvisoDialog(context);
                  },
                  child: const Text('Show Dialog')),
            ],
          ),
        ),
      ),
    );
  }

  void _showAvisoDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16.0),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Adjust the dialog size
            children: <Widget>[
              Image.asset(
                'assets/images/img2.jpg',
                height: 60,
                width: 60,
              ),
              const SizedBox(height: 10),
              const Text(
                '14 day FREE delivery for new customers.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Place an order from 18 to get 14 days of free delivery on us. Available until 08 May.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
              const Text(
                'Terms & conditions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}
