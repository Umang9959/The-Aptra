import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/custom/notification_custom_list.dart';

import '../Custom/semi_b_text.dart';
import '../Provider/tab_controller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TabControllerProvider(),
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE41E1B),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorColor: const Color(0xFFE41E1B),
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            tabs: const [
              Tab(text: 'Personal'),
              Tab(text: 'Broadcast'),
            ],
          ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFF6F6F6F),
              ),
              onPressed: () {
                // Navigate back to the previous screen by popping the current route
                Navigator.of(context).pop();
              }),
          title: const SemiText(
            text: "Notifications",
            color: Colors.black,
            size: 25,
            fontStyle: "Figtree",
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            PersonalTab(),
            BroadcastTab(),
          ],
        ),
      ),
    );
  }
}

class PersonalTab extends StatelessWidget {
  const PersonalTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notificationsPersonal = [
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      child: Column(
        children: [
          Expanded(
            child: CustomNotificationList(
              notifications: notificationsPersonal,
            ),
          ),
        ],
      ),
    );
  }
}

class BroadcastTab extends StatelessWidget {
  const BroadcastTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notificationsBroadcast = [
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
      {
        'date': '01 Jan, 2024 - 10:00 AM',
        'title': 'Keynote Session',
        'message':
            'We welcome you all, please proceed to Auditorium 1 for the keynote session',
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      child: Column(
        children: [
          Expanded(
            child: CustomNotificationList(
              notifications: notificationsBroadcast,
            ),
          ),
        ],
      ),
    );
  }
}
