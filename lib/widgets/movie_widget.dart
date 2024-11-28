// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movie_app/models/movie.dart';

// ignore: must_be_immutable
class MovieWidget extends StatelessWidget {
  Movie movie;
   MovieWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      //margin: const EdgeInsets.only(right: 0.7),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(movie.posterUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
    );
  }
}
