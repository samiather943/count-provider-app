import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    final countProvider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer){
      countProvider.setCount();
    });

  }



  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    if (kDebugMode) {
      print('jshnskfn');
    }
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          return Text(value.count.toString(),style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold
        ),);
        })
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countProvider.setCount();
      },child: const Icon(Icons.add),),
    );
  }
}