import 'package:flutter/material.dart';

import '../pages/discription_page.dart';

class BlogBoxWidget extends StatelessWidget {
  const BlogBoxWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DiscriptionPage(
                title: title,
                imagePath: imagePath,
              );
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagePath),
            ListTile(
              title: Text(title),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            )
          ],
        ),
      ),
    );
  }
}
