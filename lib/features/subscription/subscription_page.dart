import 'package:flutter/material.dart';
import 'package:movie_app/utils/data.dart';

import '../../widgets/popular_movie_widget.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Popular movies",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemCount: movies.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>  PopularMovieWidget(movie: movies[index]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tv Shows",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemCount: movies.length,
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>  PopularMovieWidget(movie: movies[index]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Continue Watching",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemCount: movies.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>  PopularMovieWidget(movie: movies[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
