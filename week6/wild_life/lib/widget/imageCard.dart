import 'package:flutter/material.dart';


class ImageCard extends StatelessWidget {
  final String imageURL;
  final String mainText;
  final String secondText;
  final double borderRadius;
  final double mainTextSize;
  final double secondTextSize;

  ImageCard({
    required this.imageURL,
    required this.mainText,
    required this.secondText,
    required this.borderRadius,
    required this.mainTextSize,
    required this.secondTextSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            imageURL, 
            fit: BoxFit.cover,
            width:double.infinity,
            height:double.infinity,
            ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  mainText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: mainTextSize,
                  ),
                ),
                Text(
                  secondText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: secondTextSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
