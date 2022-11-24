import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../settings/box_radiuses/container_radiuses.dart';

class PersonalizePage extends StatefulWidget {
  const PersonalizePage({Key? key}) : super(key: key);


  @override
  State<PersonalizePage> createState() => _PersonalizePageState();
}

class _PersonalizePageState extends State<PersonalizePage> {


  String dropDownValue = 'Back-end';

  var items = [
    'Back-end',
    'Front-end',
    'Mobile developer',
    'Data Base',
    'Game developer',
  ];

  final String name = 'Aibek';

  final String surname = 'Nuradilov';

  final String speciality = 'Flutter Developer';

  final SizedBox spacer2 = const SizedBox(
    height: 25,
  );

  final SizedBox spacer3 = const SizedBox(
    height: 8,
  );

  final SizedBox spacer4 = const SizedBox(
    height: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          'PERSONAL SETTINGS',
          style: GoogleFonts.montserrat(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            width: 400,
            height: 550,
            decoration: radius15WithColorWhite,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'ABOUT YOU',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.all(10.0),
                    width: 350,
                    height: 150,
                    decoration: radius15WithColorGrey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        spacer3,
                        Text(
                          'Name: $name',
                          style: GoogleFonts.roboto(
                              fontSize: 15, color: Colors.black87),
                        ),
                        spacer2,
                        Text(
                          'Surname: $surname',
                          style: GoogleFonts.roboto(
                              fontSize: 15, color: Colors.black87),
                        ),
                        spacer2,
                        Text(
                          'Your speciality: $speciality',
                          style: GoogleFonts.roboto(
                              fontSize: 15, color: Colors.black87),
                        ),
                        spacer3,
                      ],
                    ),
                  ),
                  spacer3,
                  Center(
                    child: Text(
                      'LITTLE BIOGRAPHY',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 350,
                    height: 265,
                    decoration: radius15WithColorGrey2,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 10, bottom: 10),
                      child: SingleChildScrollView(
                        child: Text(lorem(paragraphs: 4, words: 200),
                            softWrap: true),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 250),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.teal)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Container(
                              width: 250,
                              height: 280,
                              decoration: radius15,
                              child: Column(
                                children: [
                                  Text(
                                    'EDITING',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                    color: Colors.black12)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                borderSide: const BorderSide(
                                                    color: Colors.black87)),
                                          ),
                                        ),
                                        spacer4,
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Surname',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                    color: Colors.black12)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                borderSide: const BorderSide(
                                                    color: Colors.black87)),
                                          ),
                                        ),
                                        spacer4,
                                        DropdownButton(
                                          // Initial Value
                                          value: dropDownValue,

                                          // Down Arrow Icon
                                          icon: const Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropDownValue = newValue!;
                                            });
                                          },
                                        ),
                                      ],
                                    )
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.teal)),
                                  child: const Text('CONFIRM')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.redAccent)),
                                  child: const Text('CANCEL')),
                            ],
                          ),
                        );
                      },
                      child: Text(
                        'EDIT',
                        style: GoogleFonts.raleway(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
