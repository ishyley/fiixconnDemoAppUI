import 'package:fiixcondemo/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;

class PostPageDesign extends StatelessWidget {
  final String username;
  final dynamic post;
  final String postdesc;
  final String likes;
  final String comments;
  final String shares;
  final String musicName;
  final String effectName;
  final String saves;

  const PostPageDesign(
      {super.key,
      required this.username,
      required this.post,
      required this.postdesc,
      required this.likes,
      required this.comments,
      required this.shares,
      required this.musicName,
      required this.effectName, required this.saves});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Positioned.fill(
            child: Image.asset(
              post,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                const SizedBox(
                  child: Row(
                    children: [
                      Text(
                        resources.AppStrings.live,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        resources.AppStrings.foll,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        resources.AppStrings.foryou,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationStyle: TextDecorationStyle.solid,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(resources.AppAssets.searicon),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(resources.AppAssets.shopicon),
                          const SizedBox(
                            width: 5,
                          ),
                          const SubText(resources.AppStrings.shope),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    username,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    postdesc,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(resources.AppAssets.musicicon),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              musicName,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(resources.AppAssets.magicpen),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              effectName,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(resources.AppAssets.profileicon),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(resources.AppAssets.loveicon),
                SubText(likes),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(resources.AppAssets.messageicon),
                SubText(comments),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(resources.AppAssets.archiveicon),
                 SubText(saves),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(resources.AppAssets.sendicon),
                 SubText(shares),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(resources.AppAssets.minimicicon),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
