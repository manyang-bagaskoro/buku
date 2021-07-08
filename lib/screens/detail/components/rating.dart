import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';

class Rating extends StatefulWidget {
  final Barang barang;

  const Rating({Key? key, required this.barang}) : super(key: key);
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double rating = 0;
  @override
  void initState() {
    super.initState();
    rating = widget.barang.rating;
  }

  @override
  Widget build(BuildContext context) {
    return new StarRating(
      rating: rating,
      onRatingChanged: (rating) => setState(() => this.rating = rating),
      color: null,
    );
  }
}

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color? color;

  StarRating(
      {this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
      );
    }
    return new InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
