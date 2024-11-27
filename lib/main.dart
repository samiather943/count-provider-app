import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/count_provider.dart';
import 'package:provider_counter/provider/slider_provider.dart';
import 'package:provider_counter/screens/sider_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider
    (
      providers: [
        ChangeNotifierProvider(create: (_)=>CountProvider(),),
        ChangeNotifierProvider(create: (_)=>SliderProvider(),)
      ],
      child: MaterialApp(
      title: 'Provider Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SiderExample(),
    ),
    ); 
  }
}
