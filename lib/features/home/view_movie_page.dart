// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/data.dart';

import '../../widgets/latest_videos_widget.dart';

// ignore: must_be_immutable
class ViewMoviePage extends StatelessWidget {
  Movie movie;
  ViewMoviePage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(height: 5),
                   Text("Release Date: ${movie.releaseYear}",
                      style: TextStyle(fontSize: 15)),
                  const SizedBox(height: 5),
                   Text("Genre: ${movie.genres.toString()}",
                      style: TextStyle(fontSize: 15)),
                  const SizedBox(height: 5),
                ],
              ),
            ),
            customRow(),
             Text(
              movie.description
              ,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            customTile(),
            const Divider(
              color: Colors.grey,
            ),
            customTextFieldCoommentTile(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "More Like This",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ), 
            SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: movies.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          LatestVideosWidget(movie: movies[index],)),
                ),
          ],
        ),
      ),
    );
  }

  ListTile customTextFieldCoommentTile() {
    return ListTile(
      contentPadding: const EdgeInsets.all(5),
      leading: const CircleAvatar(
        radius: 20,
      ),
      title: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "Add a comment",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  ListTile customTile() {
    return ListTile(
      contentPadding: const EdgeInsets.all(4),
      leading: const CircleAvatar(
        radius: 22,
      ),
      title: Text(
        movie.director,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle:  Text("${movie.rating}M Subscriber"),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          child: const Text(
            "Subscribe",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Padding customRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            customChip(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Chip(
                  padding: const EdgeInsets.all(2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide.none),
                  label: const Row(
                    children: [
                      Icon(Icons.share_sharp),
                      Text("Share"),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Chip(
                  padding: const EdgeInsets.all(2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide.none),
                  label: const Row(
                    children: [
                      Icon(Icons.download),
                      Text("Download"),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Chip(
                  padding: const EdgeInsets.all(2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide.none),
                  label: const Row(
                    children: [
                      Icon(Icons.save_alt),
                      Text("Save"),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Padding customChip() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Chip(
          padding: const EdgeInsets.all(2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), side: BorderSide.none),
          label: const Row(
            children: [
              Icon(Icons.thumb_up_alt_outlined),
              Text("35.4k"),
              VerticalDivider(),
              Icon(Icons.thumb_down_alt_outlined),
            ],
          )),
    );
  }

  Container headerWidget(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(movie.posterUrl), fit: BoxFit.cover),
        color: Colors.grey[300]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 8),
            child: IconButton(
                padding: const EdgeInsets.all(0),
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: const Icon(
                Icons.slow_motion_video_rounded,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
