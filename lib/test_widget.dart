import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('test', style: const TextStyle(color: Colors.red)),
              ElevatedButton(onPressed: () {}, child: Text('bouton')),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('snack'),
                      duration: const Duration(seconds: 10),
                      action: SnackBarAction(
                        label: 'ACTION',
                        onPressed: () {
                          print(
                            '*************************************************************',
                          );
                        },
                      ),
                    ),
                  );
                },
                child: const Text('SHOW SNACK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
