import 'package:flutter/material.dart';
import 'package:movie_app/utils/data.dart';
import 'package:movie_app/widgets/movie_widget.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: 100.0,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // List content below the SliverAppBar
          SliverToBoxAdapter(
            child: customSearchBody(),
          )
        ],
      ),
    );
  }

  Padding customSearchBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GridView.builder(
              itemCount: movies.length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return MovieWidget(
                  movie: movies[index],
                );
              })
        ],
      ),
    );
  }
}
