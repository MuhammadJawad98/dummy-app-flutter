import 'package:flutter/material.dart';

import '../models/post.dart';
import '../utils/app_assets.dart';
import '../utils/constants.dart';

class CustomPostWidget extends StatelessWidget {
  final Post post;
  const CustomPostWidget({Key? key,required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              const CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  NetworkImage(Constants.dummyImage)),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'My User name',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        'Monday at 11:00 am',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 16),
                      ),
                    ]),
              ),
              const Icon(Icons.more_horiz)
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 15, top: 10, bottom: 10),
            child: Text('Librium lipsum dummy text'),
          ),
          Image.network(Constants.dummyImage),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(children: [
              Image.asset(AppAssets.likeImage, height: 30),
              const SizedBox(width: 5),
              Image.asset(AppAssets.smileImage, height: 30),
              const SizedBox(width: 5),
              Image.asset(AppAssets.thumbImage,
                  height: 30),
              const SizedBox(width: 5),
              const Expanded(child: Text('Loremlipsum  and 291 others')),
              const SizedBox(width: 5),
              const Text(
                '55 comments',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ]),
          ),
          const SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customIconButton('Like',Icons.favorite,(){}),
                customIconButton('Comment',Icons.comment,(){}),
                customIconButton('Share',Icons.share,(){}),
              ]),
        ],
      ),
    );
  }
  Widget customIconButton(String text, IconData iconData, VoidCallback onTap) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(iconData), const SizedBox(width: 10), Text(text)]),
          ),
        ),
      ),
    );
  }
}
