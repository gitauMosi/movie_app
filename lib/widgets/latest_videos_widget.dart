// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movie_app/features/home/view_movie_page.dart';
import 'package:movie_app/models/movie.dart';

// ignore: must_be_immutable
class LatestVideosWidget extends StatelessWidget {
  Movie movie;
  LatestVideosWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //navigate
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  ViewMoviePage(movie:  movie,)));
      },
      child: Container(
        height: 150,
        width: 100,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(movie.posterUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
      ),
    );
  }
}
