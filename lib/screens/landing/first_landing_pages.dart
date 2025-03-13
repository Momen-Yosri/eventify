import 'package:flutter/material.dart';

class FirstOnBoardingScreen extends StatefulWidget {
  static const String routeName = "OnboardingScreen";
   const FirstOnBoardingScreen({super.key});

  @override
  _FirstOnBoardingScreenState createState() => _FirstOnBoardingScreenState();
}

class _FirstOnBoardingScreenState extends State<FirstOnBoardingScreen> {
  bool isDarkMode = false;
  int selectedLanguage = 0; // 0 for English, 1 for Arabic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Logo & Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 40,
                ),
                const SizedBox(width: 10),
                Text(
                  'Evently',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Illustration
            Image.asset('assets/illustration.png', height: 200),
            const SizedBox(height: 30),
            // Title
            const Text(
              'Personalize Your Experience',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Description
            const Text(
              'Choose your preferred theme and language to get started with a comfortable, tailored experience.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            // Language Selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Language', style: TextStyle(fontSize: 16)),
                ToggleButtons(
                  isSelected: [selectedLanguage == 0, selectedLanguage == 1],
                  onPressed: (index) {
                    setState(() {
                      selectedLanguage = index;
                    });
                  },
                  borderRadius: BorderRadius.circular(10),
                  children: [
                    Image.asset('assets/us_flag.png', height: 24),
                    Image.asset('assets/eg_flag.png', height: 24),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            // Theme Toggle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Theme', style: TextStyle(fontSize: 16)),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Start Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Let’s Start', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
