import 'package:bloc_example/bussiness_logic/bloc/weather_bloc.dart';
import 'package:bloc_example/presentation/screens/weather_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        WeatherBloc()..add(WeatherRequest(cityName: "Ahmedabad")),
      child: MaterialApp(
        home: WeatherApp(),
      ),
    );
  }
}
