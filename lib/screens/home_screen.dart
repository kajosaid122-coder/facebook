import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldLight,
      body: Center(
        child: Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Scaffold(
            backgroundColor: AppColors.scaffoldLight,
            appBar: AppBar(
              backgroundColor: AppColors.backgroundLight,
              elevation: 0,
              title: const Text(
                'facebook',
                style: TextStyle(
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.add_circle,
                    color: AppColors.textDark,
                    size: 26,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.textDark,
                    size: 26,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.messenger,
                    color: AppColors.textDark,
                    size: 26,
                  ),
                  onPressed: () {},
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, color: AppColors.primaryBlue, size: 28),
                    Icon(Icons.tv, color: AppColors.textGray, size: 28),
                    Icon(Icons.storefront, color: AppColors.textGray, size: 28),
                    Icon(
                      Icons.person_outline,
                      color: AppColors.textGray,
                      size: 28,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: AppColors.textGray,
                      size: 28,
                    ),
                    Icon(Icons.menu, color: AppColors.textGray, size: 28),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: AppColors.backgroundLight,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            'assets/images/image_d80796.png',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('What\'s on Your Mind clicked'),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.borderGray),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Text(
                                "What's in Your Mind?",
                                style: TextStyle(
                                  color: AppColors.textGray,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          icon: const Icon(
                            Icons.photo_library,
                            color: Colors.green,
                            size: 26,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    color: AppColors.backgroundLight,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 8,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 110,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image_d8925b.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 12,
                                    left: 0,
                                    right: 0,
                                    child: Column(
                                      children: const [
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundColor:
                                              AppColors.primaryBlue,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Create a\nStory',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else if (index == 1) {
                          return Container(
                            width: 110,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/image_d895a3.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            width: 110,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/a132ed9f11168e7ec5ea5a2b1f482e364ce00ef7.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    color: AppColors.backgroundLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/image_d80796.png',
                            ),
                          ),
                          title: Text(
                            'Route',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: AppColors.textDark,
                            ),
                          ),
                          subtitle: Text(
                            '8h . 🌐',
                            style: TextStyle(
                              color: AppColors.textGray,
                              fontSize: 12,
                            ),
                          ),
                          trailing: Icon(
                            Icons.more_horiz,
                            color: AppColors.textGray,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Image.asset(
                            'assets/images/bdeb0b38af723565c7b8102b7a314be8213e5943.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.thumb_up_outlined,
                                  color: AppColors.textGray,
                                  size: 20,
                                ),
                                label: const Text(
                                  'Like',
                                  style: TextStyle(color: AppColors.textGray),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.mode_comment_outlined,
                                  color: AppColors.textGray,
                                  size: 20,
                                ),
                                label: const Text(
                                  'Comment',
                                  style: TextStyle(color: AppColors.textGray),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share_outlined,
                                  color: AppColors.textGray,
                                  size: 20,
                                ),
                                label: const Text(
                                  'Share',
                                  style: TextStyle(color: AppColors.textGray),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
