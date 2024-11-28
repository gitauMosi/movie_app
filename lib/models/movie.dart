class Movie {
  final String id;
  final String title;
  final String director;
  final int releaseYear;
  final List<String> genres;
  final String description;
  final double rating;
  final String posterUrl;

  Movie({
    required this.id,
    required this.title,
    required this.director,
    required this.releaseYear,
    required this.genres,
    required this.description,
    required this.rating,
    required this.posterUrl,
  });

  // Factory constructor to create a Movie from a JSON object
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      director: json['director'],
      releaseYear: json['releaseYear'],
      genres: List<String>.from(json['genres']),
      description: json['description'],
      rating: json['rating'].toDouble(),
      posterUrl: json['posterUrl'],
    );
  }

  // Method to convert a Movie instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'director': director,
      'releaseYear': releaseYear,
      'genres': genres,
      'description': description,
      'rating': rating,
      'posterUrl': posterUrl,
    };
  }

  
}
