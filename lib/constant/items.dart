class Items {
  final String image;
  final String title;
  final String rate;
  final String sold;
  final String location;
  final String price;
  bool liked;

  Items(
      {required this.image,
      required this.title,
      required this.rate,
      required this.sold,
      required this.location,
      required this.price,
      required this.liked});
}
