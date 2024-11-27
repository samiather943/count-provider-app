
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/slider_provider.dart';

class SiderExample extends StatefulWidget {
  const SiderExample({super.key});

  @override
  State<SiderExample> createState() => _SiderExampleState();
}
  // double value = 1;

class _SiderExampleState extends State<SiderExample> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SliderProvider>(context,listen: false);
    
    if (kDebugMode) {
      print('hekcknck');
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Consumer<SliderProvider>(
          builder: (context, value, child) {
            return Slider(value: value.value, onChanged: (val){
            // min:0;
            // max:1;
            value.setValue(val);
                  });
          },
    
         ),
         Consumer<SliderProvider>(
          builder: (context, value, child) {
            return Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration:  BoxDecoration(
                  color: Colors.red.withOpacity(value.value),
                ),
                child: const Center(
                  child: Text('!st Conatiner'),
                ),
              ), 
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration:  BoxDecoration(
                  color: Colors.green.withOpacity(value.value),
                ),
                child: const Center(
                  child: Text('2nd Conatiner'),
                ),
              ),
            ),
          ],
         );
          },
    
         ),

          
        ],
      ),
    );
  }
}