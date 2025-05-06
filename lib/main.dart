import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Menambahkan key pada konstruktor
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: WeatherScreen()));
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  // Mengubah tipe state menjadi publik
  WeatherScreenState createState() => WeatherScreenState();
}

class WeatherScreenState extends State<WeatherScreen> {
  String location = 'Tangerang Selatan';
  String date = 'Tuesday, May 05, 2025';
  double temperature = 15.0;
  String condition = 'Cloudy';
  String tempRange = '25°C / 28°C';

  void updateWeather() {
    setState(() {
      temperature = 18.0;
      condition = 'Sunny';
      tempRange = '20°C / 30°C';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background.jpg',
          ), // Gambar latar belakang
          fit: BoxFit.cover, // Menyesuaikan gambar agar menutupi layar
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              location,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(date, style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 40),
            Text(
              '$temperature°C',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              condition,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 40),
            Text(
              tempRange,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: updateWeather,
              child: Text('Update Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
