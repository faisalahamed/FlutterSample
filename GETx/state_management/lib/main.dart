import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final items = RxList<String>([]);
  // final myMap = RxMap<String, dynamic>({});
  // final myMap2 = Rx<Map<String, dynamic>>({});

  // RxInt data = 10.obs;
  RxInt data = RxInt(10);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('object');
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Obx(() => Text('$data')),
              RaisedButton(
                onPressed: () {
                  data++;
                },
                child: Text('increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
