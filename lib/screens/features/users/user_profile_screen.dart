import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tictok_clone/constants/gaps.dart';
import 'package:tictok_clone/constants/sizes.dart';
import 'package:tictok_clone/screens/features/users/widgets/persistent_tabbar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          body: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [
                Center(
                  child: GridView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: 20,
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 17,
                        crossAxisSpacing: Sizes.size2,
                        mainAxisSpacing: Sizes.size2,
                      ),
                      itemBuilder: (context, index) => Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 9 / 16,
                                child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  placeholder: "assets/images/placeholder.jpg",
                                  image:
                                      "https://plus.unsplash.com/premium_photo-1686538382591-e10c39ad34e3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8",
                                ),
                              ),
                              Gaps.v10,
                            ],
                          )),
                ),
                const Center(child: Text("Page one"))
              ])),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text("User"),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.gear,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    foregroundColor: Colors.teal,
                    backgroundColor: Colors.blue,
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/3612017?v=4"),
                    child: Text("User"),
                  ),
                  Gaps.v20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "@Username",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Gaps.h5,
                      FaIcon(
                        FontAwesomeIcons.solidCircleCheck,
                        size: 16,
                        color: Colors.blue.shade500,
                      ),
                    ],
                  ),
                  Gaps.v24,
                  SizedBox(
                    height: Sizes.size52,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text("97",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size16)),
                            Gaps.v5,
                            Text("Following",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ))
                          ],
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                          width: 32,
                          color: Colors.grey.shade200,
                        ),
                        Column(
                          children: [
                            const Text("10M",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size16)),
                            Gaps.v5,
                            Text("Followers",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ))
                          ],
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                          width: 32,
                          color: Colors.grey.shade200,
                        ),
                        Column(
                          children: [
                            const Text("104.3M",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size16)),
                            Gaps.v5,
                            Text(
                              "Likes",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gaps.v14,
                  FractionallySizedBox(
                    widthFactor: 0.33,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Sizes.size12,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Sizes.size4),
                        ),
                      ),
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Gaps.v14,
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.size32,
                    ),
                    child: Text(
                      "All highlights and where to watch live matches on FIFA+ I wonder how it would loook",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v14,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.link,
                        size: Sizes.size12,
                      ),
                      Gaps.h4,
                      Text(
                        "https://nomadcoders.co",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Gaps.v5,
                ],
              )),
              SliverPersistentHeader(pinned: true, delegate: PersistentTabBar())
            ];
          },
        ),
      ),
    );
  }
}
