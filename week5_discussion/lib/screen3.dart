import 'package:flutter/material.dart';

// Start the root class to extend statelesswidget
class Section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(5, (index) {
            return Column(
              children: [
                Center(
                  child: Text(
                    'Day $index',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            );
          }),
        );
  }
}
