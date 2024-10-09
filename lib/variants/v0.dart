import 'package:flutter/material.dart';

class V0 extends StatefulWidget {
  @override
  State<V0> createState() => _V0State();
}

class _V0State extends State<V0> {
  double _size = 10.0;
  double _radius = 0.0;

  _onChangeSize(double value) {
    setState(() {
      _size = value;
    });
  }

  _onChangeBorderRadius(double value) {
    setState(() {
      _radius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Size: "),
            Text(_size.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _size, min: 10, max: 100, onChanged: _onChangeSize),
        Row(
          children: [
            const Text("Radius: "),
            Text(_radius.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _radius, min: 0, max: 100, onChanged: _onChangeBorderRadius),

        Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(_radius))
          ),
        )
      ],
    );
  }
}