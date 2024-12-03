import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/register');
    });
    return Scaffold(
       backgroundColor: Colors.blue[800],
       body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'img/cinema_gift.png',
                 width: 170,
              ),
              const SizedBox(height: 20),
              const Text(
                'TIX VIP, lebih seru, koin melimpah, dapat hadiah!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Gabung TIX VIP dan kumpulkan koin untuk mendapatkan hadiah dan diskon.',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
       ),
    );
  }
}