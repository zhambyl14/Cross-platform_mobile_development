import 'package:flutter/material.dart';
import 'GridButton.dart';

class Grid extends StatelessWidget {
  final List<int> numbers;
  final Size size;
  final Function(int) clickGrid;

  Grid(this.numbers, this.size, this.clickGrid);

  @override
  Widget build(BuildContext context) {
    var height = size.height;

    return Container(
      height: height * 0.60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index] != 0
                ? GridButton(
                    "${numbers[index]}",
                    () {
                      clickGrid(index);
                    },
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
