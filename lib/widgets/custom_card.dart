import 'package:flutter/material.dart';
import 'package:flutter_learn/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo, color: AppTheme.primary),
            title: Text('soy un titulo'),
            subtitle: Text('loremTempor fugiat aute incididunt incididunt do.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () { },
                  child: const Text('cancel'),
                ),

                TextButton(
                  onPressed: () { },
                  child: const Text('ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
