import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_settings/app_settings.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Account'),
            border: null,
            backgroundColor: CupertinoColors.systemGroupedBackground,
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 0),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  CupertinoListSection.insetGrouped(
                    children: <CupertinoListTile>[
                      CupertinoListTile.notched(
                        title: const Text('User Name'),
                        subtitle: const Text('Edit Account & Profile'),
                        leading: const FlutterLogo(),
                        trailing: const CupertinoListTileChevron(),
                        leadingSize: 80,
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Name, Email, Phone, Address, 2FA, Reset pwd');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Payment Method'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemRed,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.creditcard_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Credit Card, Reminder to connect w/ stripe');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Purchase History'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.time_solid,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Transaction History w/ analytics and filter by merchant');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Refer a Friend'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemOrange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.person_2_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Generate referal code w/ ability to share');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Linked Accounts'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemPurple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.link,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Linked Accounts: Amazon, Target, etc.');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                    header: const Text('Settings'),
                    children: <CupertinoListTile>[
                      CupertinoListTile.notched(
                        title: const Text('General'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.slider_horizontal_3,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'General Settings');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Notifications'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemRed,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.bell_solid,
                            color: CupertinoColors.white
                          )
                        ),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Notification Settings');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Open System Permissions'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemGrey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.settings,
                            color: CupertinoColors.white
                          )
                        ),
                        //onTap: () => AppSettings.openAppSettings(), //Only works on Android
                      ),
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                    children: <CupertinoListTile>[
                      CupertinoListTile.notched(
                        title: const Text('Help and Support'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemRed,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.question_circle_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Help and support page or redirect to website');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Provide Feedback'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemPurple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.bubble_left_bubble_right_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Feedback Page or redirect to website');
                            },
                          ),
                        ),
                        //onTap: () => AppSettings.openAppSettings(), //Only works on Android
                      ),
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                    header: const Text('Show Your Support'),
                    children: <CupertinoListTile>[
                      CupertinoListTile.notched(
                        title: const Text('Rate App in the App Store'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemOrange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.star_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'General Settings');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Recommend to a Friend'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemPurple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.plus_bubble_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) {
                              return const _SecondPage(text: 'Notification Settings');
                            },
                          ),
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: const Text('Follow @Project_305'),
                        leading: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            CupertinoIcons.at_circle_fill,
                            color: CupertinoColors.white
                          )
                        ),
                        //onTap: () => AppSettings.openAppSettings(), //Only works on Android
                      ),
                    ],
                  ),
                ]
              )
            )
          )
        ],
      )
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
