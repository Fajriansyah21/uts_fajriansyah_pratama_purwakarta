import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: 250,
              height: 310,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(120),
              ),
              child: Image.network(
                'https://placehold.co/600x600/png?text=Food+Illustration',
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30),

            Text(
              "All your favorites",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
            ),

            SizedBox(
              height: 12
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8
              ),
              child: Text(
                "Get all your loved foods in one once place,"
                "you just place the order we do the rest",
                textAlign:  TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  color: Colors.blueGrey[400],
                ),
              ),
            ),

            SizedBox(
              height:26
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 9,
                  color: Colors.deepOrange,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.circle,
                  size: 9,
                  color: Colors.orange[100],
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.circle,
                  size: 9,
                  color: Colors.orange[100],
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.circle,
                  size: 9,
                  color: Colors.orange[100],
                ),
              ],
            ),

            Spacer(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "NEXT",
                    style: 
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
