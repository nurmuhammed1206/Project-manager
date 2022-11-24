import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'note_cards/notes.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (_, index) {
        final note = notes[index];
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (directeion) {
            // Remove note after dismiss from notes
            notes.removeAt(index);
          },
          confirmDismiss: (DismissDirection direction) async {
            return await showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 5.0, bottom: 10.0),
                      child: Text(
                        'Confirm',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Do you really want to delete the course?',
                      style: GoogleFonts.dosis(fontSize: 17),
                    ),
                  ],
                ),
                actions: [
                  FlatButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Delete'.toUpperCase()),
                  ),
                  FlatButton(
                    color: Colors.indigoAccent,
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('cancel'.toUpperCase()),
                  ),
                ],
              ),
            );
          },
          child: Card(
            color: Colors.black12,
            //  margin: EdgeInsets.symmetric(horizontal: 50),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            // height: 80,
                            margin:
                            const EdgeInsets.only(top: 10, left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                note.title,
                                style:
                                GoogleFonts.raleway(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            // height: 80,
                            margin: const EdgeInsets.only(
                                top: 10, left: 10, bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                note.userNameTitle,
                                style: GoogleFonts.raleway(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 170,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(note.selectedCategories
                                      .map((e) => e.title)
                                      .join("\n")),
                                ],
                              ),
                            ),
                          ),
                        ],
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
