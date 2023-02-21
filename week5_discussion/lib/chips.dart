import 'package:flutter/material.dart';

enum ExerciseFilter { fever, insomnia, sweating, apathy, coughing }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Choose the symptoms', style: textTheme.labelLarge),
        const SizedBox(height: 5.0),
        Wrap(
          spacing: 5.0,
          children: ExerciseFilter.values.map((ExerciseFilter exercise) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: FilterChip(
                label: Text(exercise.name),
                selected: _filters.contains(exercise.name),
                backgroundColor: Colors.green[400],
                selectedColor: Colors.amber[200],
                onSelected: (bool value) {
                  setState(() {
                    if (value) {
                      if (!_filters.contains(exercise.name)) {
                        _filters.add(exercise.name);
                      }
                    } else {
                      _filters.removeWhere((String name) {
                        return name == exercise.name;
                      });
                    }
                  });
                },
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0),
        Text('You have selected: ${_filters.join(', ')}')
      ],
    );
  }
  // Stateful widget code here
}
