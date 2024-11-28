import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/utils/data.dart';
import 'package:movie_app/widgets/latest_videos_widget.dart';

import '../../widgets/flutterchip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MovieFlix",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_pin),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                  items: [
                    movieheader(context),
                    movieheader(context),
                    movieheader(context),
                    movieheader(context),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
              customRow('Latest Videos', () {}),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyFilterChip(
                          label: 'All',
                          color: Colors.green,
                        ),
                        MyFilterChip(label: 'Trending'),
                        MyFilterChip(label: 'For You'),
                        MyFilterChip(label: 'Live'),
                        MyFilterChip(label: 'Drama'),
                        MyFilterChip(label: 'Movies'),
                      ],
                    )),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    itemCount: movies.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => LatestVideosWidget(
                          movie: movies[index],
                        )),
              ),
              const SizedBox(
                height: 15,
              ),
              customRow('Trending now', () {}),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    itemCount: movies.length,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => LatestVideosWidget(
                          movie: movies[index],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row customRow(String name, Function() function) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: function,
          child: const Text(
            'Show All',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  movieheader(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
          image: const DecorationImage(
              image: AssetImage("assets/images/thor.jpeg"), fit: BoxFit.cover)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Discover Movies',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Get ready to unwind with your favorite movies',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
