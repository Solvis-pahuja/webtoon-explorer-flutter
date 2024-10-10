import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:webtoon_solvis_assignment/categories.dart';

class DetailScreen extends StatefulWidget {
  Categoryy category;

  DetailScreen({required this.category});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String description;
  double _rating = 3.0;

  void _addToFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList('favorites') ?? [];
    if (!favorites.contains(widget.category.title)) {
      favorites.add(widget.category.title);
      prefs.setStringList('favorites', favorites);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Added to favorites!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.category.title)),
      body: Column(
        children: [
          Image.network(widget.category.imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.category.description),
          ),
          RatingBar.builder(
            initialRating: _rating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                _rating = rating;
              });
            },
          ),
          ElevatedButton(
            onPressed: _addToFavorites,
            child: Text('Add to Favorites'),
          ),
        ],
      ),
    );
  }
}
