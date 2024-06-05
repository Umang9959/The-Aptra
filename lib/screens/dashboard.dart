import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Screens/agenda.dart';
import 'package:the_aptra/Screens/home.dart';
import 'package:the_aptra/Screens/menu.dart';
import 'package:the_aptra/Screens/speaker.dart';
import 'package:the_aptra/Screens/venue.dart';
import 'package:the_aptra/screens/m_badge.dart';
import 'package:the_aptra/screens/my_profile.dart';
import 'package:the_aptra/screens/notification.dart';

import '../Custom/semi_b_text.dart';
import '../Provider/bottom_nav.dart';
import '../Provider/container_dashboard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardContent();
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  final List<Widget> _pages = const [
    Home(),
    Agenda(),
    Menu(),
    Speaker(),
    Venue(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer2<BottomNavBarProvider, ContainerVisibilityProvider>(
      builder: (context, provider, visibilityProvider, child) {
        return GestureDetector(
          onTap: () {
            if (visibilityProvider.isContainerVisible) {
              visibilityProvider.toggleContainerVisibility();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              elevation: .5,
              backgroundColor: Colors.white,
              title: SemiText(
                text: provider.pageTitle,
                color: Colors.black,
                size: 25,
                fontStyle: "Figtree",
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/images/notif.svg",
                    height: 26.3,
                    width: 21.41,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {
                      visibilityProvider.toggleContainerVisibility();
                    },
                    child: Image.asset(
                      "assets/images/prof.png",
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ],
              automaticallyImplyLeading: false,
              shadowColor: Colors.black,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: provider.currentIndex,
              onTap: provider.onTap,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/home_icon.svg",
                    color:
                        provider.currentIndex == 0 ? Colors.red : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/my_favourites_footer.svg",
                    color:
                        provider.currentIndex == 1 ? Colors.red : Colors.grey,
                  ),
                  label: 'Agenda',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/menu.svg",
                    color:
                        provider.currentIndex == 2 ? Colors.red : Colors.grey,
                  ),
                  label: 'Menu',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/my_meeting_footer.svg",
                    color:
                        provider.currentIndex == 3 ? Colors.red : Colors.grey,
                  ),
                  label: 'Speaker',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/attendee_footer.svg",
                    color:
                        provider.currentIndex == 4 ? Colors.red : Colors.grey,
                  ),
                  label: 'Venue',
                ),
              ],
            ),
            body: SafeArea(
              child: Stack(
                children: [
                  IndexedStack(
                    index: provider.currentIndex,
                    children: _pages,
                  ),
                  if (visibilityProvider.isContainerVisible)
                    Positioned(
                      right: 10,
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyProfileScreen(),
                                    ),
                                  );
                                },
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SemiText(
                                    text: "My Profile",
                                    color: Colors.black,
                                    size: 20,
                                    fontStyle: "Figtree",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MbadgeScreen(),
                                    ),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SemiText(
                                    text: "M-Badge",
                                    color: Colors.black,
                                    size: 20,
                                    fontStyle: "Figtree",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                color: Colors.grey,
                                thickness: .4,
                              ),
                              InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/logout.svg"),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const SemiText(
                                        text: "Logout",
                                        color: Colors.black,
                                        size: 20,
                                        fontStyle: "Figtree",
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
