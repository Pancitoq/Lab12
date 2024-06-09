import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  if (UniversalPlatform.isWeb) {
    debugPrint("Web");
    runApp(const MyApp());
  } else {
    runApp(const ErrorApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xffededed),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZHi4-AZesuQwj0STmAKF4o6Rfy_h1sBvzcw&s',
                height: 90,
              ),
              SizedBox(height: 20),
              Text(
                'SIMPLE',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363636)),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CupertinoTextField(
                  placeholder: 'Username',
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1, color: Color(0x8aa0a0a0)),
                  ),
                  placeholderStyle: TextStyle(color: Color(0xff6b6b6b)),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: CupertinoTextField(
                  placeholder: 'Passphrase',
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1, color: Color(0x8aa0a0a0)),
                  ),
                  placeholderStyle: TextStyle(color: Color(0xff6b6b6b)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Color(0xff52abcb),
                child: CupertinoButton.filled(
                  child: Text('Sign In'),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(height: 8),
              CupertinoButton(
                child: Text(
                  'Reset your passphrase?',
                  style: TextStyle(
                    color: Color(0xb37f7f7f),
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorApp extends StatelessWidget {
  const ErrorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('La app solo funciona en web o ios'),
        ),
      ),
    );
  }
}
