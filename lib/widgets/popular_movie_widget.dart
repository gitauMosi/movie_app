// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_widget.dart';

// ignore: must_be_immutable
class PopularMovieWidget extends StatelessWidget {
  Movie movie;
  PopularMovieWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieWidget(
              movie: movie,
            ),
            Text(
              movie.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(movie.releaseYear.toString())
          ],
        ),
      ),
    );
  }
}
