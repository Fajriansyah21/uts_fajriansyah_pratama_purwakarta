import 'package:flutter/material.dart';
import 'Halaman_order.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: 250,
                height: 310,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(120),
                ),
                child: Image.network(
                  'https://media.istockphoto.com/id/1975325100/id/vektor/pria-dengan-gangguan-makan-makan-makanan-cepat-saji-ilustrasi-vektor-datar-terisolasi.jpg?s=612x612&w=0&k=20&c=vbCAlDOol7T3L0-Ynby8STHAXxJQ2dMm9s3Abm-bBYg=',
                  fit: BoxFit.cover,
                ),
              ),
        
              SizedBox(height: 10),
        
              Text(
                "All your favorites",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[900],
                ),
              ),
        
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.0,
                ),
                child: Text(
                  "Get all your loved foods in one once place, "
                  "you just place the one we do the rest",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    color: Colors.blueGrey[400],
                  ),
                ),
              ),
        
              SizedBox(height: 26),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 9, color: Colors.deepOrange),
                  SizedBox(width: 10),
                  Icon(Icons.circle, size: 9, color: Colors.orange[100]),
                  SizedBox(width: 10),
                  Icon(Icons.circle, size: 9, color: Colors.orange[100]),
                  SizedBox(width: 10),
                  Icon(Icons.circle, size: 9, color: Colors.orange[100]),
                ],
              ),
        
              SizedBox(height: 30),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrdersPage()),
                      );
                    },
                    
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
        
              SizedBox(height: 4),
        
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrdersPage()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 14, 
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey[400]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
