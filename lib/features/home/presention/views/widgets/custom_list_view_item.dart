import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/74/97/0f/74970fd00d0dcd778df182b94bf7b0fc.jpg"))),
        ),
      ),
    );
  }
}
