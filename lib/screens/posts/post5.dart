import 'package:fiixcondemo/widget/post_page_design.dart';
import 'package:flutter/material.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;


class Post5 extends StatelessWidget {
  const Post5({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostPageDesign(
        username: resources.AppStrings.username,
        post: resources.AppAssets.homebac,
        postdesc: resources.AppStrings.whathappens,
        likes: resources.AppStrings.text1_,
        comments: resources.AppStrings.text1_7,
        shares: resources.AppStrings.text24,
        musicName: resources.AppStrings.falz,
        effectName: resources.AppStrings.effectname,
        saves: resources.AppStrings.text1_2);
  }
}