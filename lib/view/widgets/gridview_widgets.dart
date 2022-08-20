import 'package:flutter/material.dart';
import 'package:instagram/view/constant/dimension.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.gridHight,
    required this.items,
    required this.physics,
  }) : super(key: key);

  final double gridHight;
  final List<String> items;
  final ScrollPhysics physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gridHight,
      width: double.maxFinite,
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
        physics: physics,
        itemCount: items.length,
        itemBuilder: (context, index) => Container(
          height: Dimension.flullScreen / 3,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                items[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
