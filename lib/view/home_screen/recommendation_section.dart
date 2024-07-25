import 'package:flutter/material.dart';
import 'package:flutter_olx/dummy_db.dart';
import 'recommendation_item.dart';

class RecommendationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), // Disable grid's own scrolling
        shrinkWrap: true, // Wrap content of the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75, // Adjust to fit the content better
        ),
        itemCount: DummyDb.recommendations.length,
        itemBuilder: (context, index) {
          final item = DummyDb.recommendations[index];
          return RecommendationItem(
            imageUrl: item['imageUrl']!,
            title: item['title']!,
            location: item['location']!,
            price: item['price']!,
          );
        },
      ),
    );
  }
}
