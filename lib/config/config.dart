import 'package:flutter/material.dart';

class Config {
  static const appName = 'ForumKeadilan';
  static const supportEmail = 'pastibisa7913@gmail.com';
  static const privacyPolicyUrl = 'https://www.mrb-lab.com/privacy-policy';
  static const iOSAppID = '000000';

  //SOCIAL LINKS
  static const String facebookPageUrl =
      'https://www.facebook.com/forumkeadilandotcom';
  static const String youtubeChannelUrl =
      'https://www.youtube.com/@forumkeadilanTV';
  static const String twitterUrl = '';

  //app theme color
  final Color appThemeColor = Color.fromARGB(255, 255, 0, 0);

  // Icons
  static const String appIcon = 'assets/images/forumlogo.png';
  static const String logo = 'assets/images/forumlogo.png';
  static const String splash = 'assets/images/forum_perubahaan.jpg';

  //languages
  static const List<String> languages = [
    'English',
    'Spanish',
    'Arabic',
    'Indonesia'
  ];

  //Image Assets
  static const String commentImage = "assets/images/comment.svg";
  static const String bookmarkImage = "assets/images/bookmark.svg";
  static const String notificationImage = "assets/images/notification.svg";
  static const String noContentImage = "assets/images/no_content.svg";

  //animation files
  static const String doneAnimation = 'assets/animation_files/done.flr';
  static const String searchAnimation = 'assets/animation_files/search.flr';
}
