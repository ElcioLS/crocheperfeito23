import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, SetState) {
            return TextFormField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    showPassword ? Icons.lock_open : Icons.lock_outline,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        showPassword = !showPassword;
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
