import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';

import 'notification.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xff3b302f),
          //Color(0xFF212121),
          body: SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shadowColor: Color(0xffd17842),
                      margin: const EdgeInsets.fromLTRB(32, 40, 32, 16),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xFF63554b),
                      child: ListTile(
                        onTap: () {
                          Get.to(() => const UserInfo());
                        },
                        title: const Text(
                          'Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('images/model.png'),
                        ),
                        trailing: const Icon(Icons.edit, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      elevation: 5,
                      shadowColor: Color(0xffd17842),
                      margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xFF63554b),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.help_outline,
                                color: Colors.white),
                            title: const Text(
                              'Help & Support',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Get.to(() => HelpAndSupportPage());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.engineering,
                                color: Colors.white),
                            title: const Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Get.to(() => TermsAndConditions());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.group_add,
                                color: Colors.white),
                            title: const Text(
                              'Invite a Friend',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Get.to(() => InviteFriends());
                            },
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Color(0xffd17842),
                      elevation: 5,
                      margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xFF63554b),
                      child: Column(children: [
                        ListTile(
                          leading: const Icon(Icons.notifications,
                              color: Colors.white),
                          title: const Text(
                            'Notifications',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Get.to(() => NotificationPage());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.language_rounded,
                              color: Colors.white),
                          title: const Text(
                            'Change Language',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Get.to(() => ChangeLanguage());
                          },
                        ),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    Card(
                        shadowColor: Color(0xffd17842),
                        elevation: 5,
                        margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color(0xFF63554b),
                        child: Column(children: [
                          ListTile(
                            leading:
                                const Icon(Icons.logout, color: Colors.white),
                            title: const Text(
                              'Sign Out',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            onTap: () {
                              UserBoxController().delUser();
                              Get.offAll(() => LogInPages());
                            },
                          ),
                        ]))
                  ]))),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: 1,
      color: Color(0xff63554b),
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.008,
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.035,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.article_outlined,
                    size: size.height * 0.075,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terms And Conditions',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.024,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Last Updated: May 2,2022',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.0175,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Expanded(
              child: Container(
                width: size.width,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.045),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terms And Conditions Here :',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.019,
                          color: Colors.white54.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Text(
                        '* E-Cafe when purchased or downloaded through the Services is licensed to You for use only under the terms of this License Agreement. The Licensor reserves all rights not expressly granted to You.E-Cafe is to be used on devices that operate with. \n * E-Cafe is a piece of software created to for coffee app and customized for mobile devices. It is used to select different types of coffees and buy them from the app. \n * We reserve all rights to terminate accounts, edit or remove content and cancel orders at our solediscretion.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.019,
                          color: Colors.white54.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Text(
                        '* You must be at least 18 (eighteen) years of age before you can use this app. By using this app, you warrant that you are at least 18 years of age and you may legally adhere to thisAgreement. This app assumes no responsibility for liabilities related to age misrepresentation.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.019,
                          color: Colors.white54.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Text(
                        '* As a user of this app, you may be asked to register with us and provide private information. You are responsible for ensuring the accuracy of this information, and you are responsible for maintaining the safety and security of your identifying information. You are also responsible for all activities that occur under your account or password. If you think there are any possible issues regarding the security of your account on the app,inform us immediately so we may address them accordingly',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: size.height * 0.019,
                          color: Colors.white54.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.045,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          TaskCheckbox(
                            checkboxState: isChecked,
                            toggleCheckboxState: checkBoxCallBack,
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            'Yes, I understand and agree to the E-Cafe \n Terms And Conditions.',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: isChecked
                                    ? TextDecoration.lineThrough
                                    : null),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState as void Function(bool?)?,
    );
  }
}

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffb18f6a),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffeee9d3),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: const AssetImage('images/friends.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                              'Share and Invite our bestselling coffee app to your Friends '),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xffa68966),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Send Invites Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
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
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 210,
                  decoration: BoxDecoration(
                    color: const Color(0xffeee9d3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      const Text(
                        'Get biggest gifts if you have referred \n this app to anyone ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.card_giftcard,
                                size: 90,
                              ),
                              const Text(
                                '~ Delivery in 10% discount \n ~ Top 3 customers will get free \n delivery for 3 days',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.share,
                      size: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  _HelpAndSupportPageState createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffa68966),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.04,
                ),
                Icon(
                  Icons.clear,
                  size: 20,
                ),
                SizedBox(
                  width: size.width * 0.06,
                ),
                Text(
                  'How can we help?',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              color: Color(0xffb18f6a),
              height: size.height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Icon(
                      Icons.shopping_bag,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get help with my orders',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              color: Color(0xffb18f6a),
              height: size.height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Icon(
                      Icons.email,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My support requests',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              color: Color(0xffb18f6a),
              height: size.height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Icon(
                      Icons.more_horiz,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FAQ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.69,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              color: Color(0xffb18f6a),
              height: size.height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Icon(
                      Icons.campaign,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Report an issue',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              color: Color(0xffb18f6a),
              height: size.height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Icon(
                      Icons.person_search,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My account issues',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF212121),
        body: SafeArea(
            child: Container(
                height: size.height,
                width: size.width,
                child: Column(children: [
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Container(
                    width: size.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.035,
                    ),
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(
                          width: size.width * 0.90,
                          height: size.height * 0.10,
                        ),
                        Text(
                          'Edit Language -',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        Text(
                          'Bangla',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'English',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'India',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'German',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'Spanish',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Colors.white,
                          ),
                        ),
                      ]))
                ]))));
  }
}

class UserInfoEdit extends StatefulWidget {
  const UserInfoEdit({Key? key}) : super(key: key);

  @override
  _UserInfoEdit createState() => _UserInfoEdit();
}

class _UserInfoEdit extends State<UserInfoEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffa68966),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 80,
            ),
                InfoCard(
                  text: 'Upload your profile picture',
                  icon: Icons.collections,
                  onPressed: () async {}),
                InfoCard(
                    text: 'Username',
                    icon: Icons.person_pin,
                    onPressed: () async {}),
                InfoCard(
                    text: 'Contact', icon: Icons.phone, onPressed: () async {}),
                InfoCard(
                    text: 'Address',
                    icon: Icons.location_on,
                    onPressed: () async {}),
                InfoCard(
                text: 'Shopname', icon: Icons.store, onPressed: () async {}),
          ]),
        ));
  }
}

class _UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffa68966),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 80,
            ),
                InfoCard(
                  text: 'Upload your profile picture',
                  icon: Icons.collections,
                  onPressed: () async {}),
                InfoCard(
                    text: 'Username',
                    icon: Icons.person_pin,
                    onPressed: () async {}),
                InfoCard(
                    text: 'Contact', icon: Icons.phone, onPressed: () async {}),
                InfoCard(
                    text: 'Address',
                    icon: Icons.location_on,
                    onPressed: () async {}),
                InfoCard(
                text: 'Shopname', icon: Icons.store, onPressed: () async {}),
          ]),
        ));
  }
}



class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  InfoCard({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 110,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Center(
              child: ListTile(
                leading: Icon(
                  icon,
                  color: Colors.black54,
                ),
                title: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
