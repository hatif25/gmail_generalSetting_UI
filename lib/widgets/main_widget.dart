import 'package:flutter/material.dart';
import 'package:gmail_settings/widgets/general_setting.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              child: CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage('assets/images/profile.png'),
                // backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(600, 100, 0, 0),
                    constraints: BoxConstraints(
                      maxHeight: 300,
                      maxWidth: 300,
                      minHeight: 100,
                      minWidth: 200,
                    ),
                    items: [
                      PopupMenuItem<String>(
                        value: 'seeAllSettings',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Quick Settings',),
                            SizedBox(height: 20),
                            Container(
                              width: 190,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: TextButton(
                                  child: Text('See All Settings',softWrap: false, maxLines: 1,),
                                  onPressed: () {
                                    // Handle "See All Settings" button press
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => GeneralSetting()),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }
}

class GeneralSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Settings'),
      ),
      body: Center(
        child: Text('This is the General Settings page.'),
      ),
    );
  }
}
