import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../settings/box_radiuses/container_radiuses.dart';
import '../../../pages/languages_data_page.dart';
import '../../../pages/personalize_page.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      backgroundColor: Colors.indigo[300],
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 5),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/004/263/549/original/education-logo-open-book-dictionary-textbook-or-notebook-with-graduation-hat-icon-modern-emblem-idea-concept-design-for-business-libraries-schools-universities-educational-courses-free-vector.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Text(
              'Aibek Nuradilov',
              style: GoogleFonts.comfortaa(fontSize: 24, color: Colors.white),
            ),
          ),
          Container(
            width: 180,
            height: 25,
            decoration: radius10WithColorWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                  child: Image(
                    image: AssetImage('assets/flutter_icon.png'),
                  ),
                ),
                Text(
                  ' FLUTTER DEVELOPER',
                  style: GoogleFonts.raleway(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.code, color: Colors.white),
            title: Text(
              'GIVED LANGUAGES',
              style:
              size13WithColorWhite,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LanguagesData()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded, color: Colors.white),
            title: Text(
              'USER SETTINGS',
              style:
              size13WithColorWhite,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PersonalizePage()));
            },
          ),
        ],
      ),
    );
  }
}
