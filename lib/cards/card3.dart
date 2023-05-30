// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:wordpress_app/models/article.dart';
import 'package:wordpress_app/models/constants.dart';
import 'package:wordpress_app/models/youtube_channel/channel_forum.dart';
import 'package:wordpress_app/pages/videoscreen.dart';
import 'package:wordpress_app/services/app_service.dart';
import 'package:wordpress_app/utils/cached_image.dart';
import 'package:wordpress_app/utils/next_screen.dart';
import 'package:wordpress_app/widgets/bookmark_icon.dart';
import 'package:wordpress_app/widgets/video_icon.dart';

import '../models/youtube_channel/video_model.dart';

//big card with title only
class Card3 extends StatelessWidget {
  const Card3({
    Key? key,
    required this.video,
    required this.channel,
    required this.scaffoldKey,
    this.haspadding = false,
  }) : super(key: key);
  final Video video;
  final Channel channel;
  final bool haspadding;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => VideoScreen(
                        id: video.id,
                      )),
            ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: haspadding ? 12.0 : 0),
                  child: Image.network(
                    video.thumbnailUrl,
                    height: 220.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => print('Navigate to profile'),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(channel.profilePictureUrl),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            video.title,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 15.0),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '${video.channelTitle}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
