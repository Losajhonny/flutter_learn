import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const <String>['Megaman', 'Metal Gear', 'Super'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view tipo 2'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
           onTap: () {
             print("on tap");
           },
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}
