class User {
  User({
    required this.likes,
    required this.comments,
    required this.favourites,
    required this.name,
    required this.title,
    required this.location,
    this.email,
    this.phoneNumber,
    this.website,
    required this.imageURL,
  })  : assert(name != ''),
        assert(imageURL != ''),
        assert(title != ''),
        assert(location != '');

  final String name;
  final String title;
  final String location;
  final String? email;
  final String? phoneNumber;
  final String? website;
  final String imageURL;
  final int likes;
  final int comments;
  final int favourites;
}
