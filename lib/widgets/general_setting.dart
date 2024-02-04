import 'package:flutter/material.dart';

class GeneralSetting extends StatefulWidget {
  const GeneralSetting({Key? key}) : super(key: key);

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  String selectedLanguage = 'English';
  String selectedGmailLanguage = 'English';
  bool enableInputTools = false;
  String selectedEditingSupport = 'Right-to-left editing support off';

  List<String> languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Chinese',
    'Japanese',
    'Korean',
    // Add more languages as needed
  ];

  String selectedCountry = 'United States'; // Default country

  List<String> countries = [
    'United States',
    'India',
    'United Kingdom',
    'Germany',
    'China',
    'Japan',
    'South Korea',
    // Add more countries as needed
  ];

  List<String> starsInUse = ['⭐', '⭐⭐', '⭐⭐⭐']; // Stars in use
  List<String> starsNotInUse = ['⭐⭐⭐⭐', '⭐⭐⭐⭐⭐']; // Stars not in use

  String selectedSignature = 'my signature';
  List<String> savedSignatures = ['my signature']; // Predefined signatures
  String newSignature = ''; // Newly added signature

  bool insertBeforeQuotedText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Languages',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Language:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: selectedLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLanguage = newValue ?? 'English';
                      });
                    },
                    items: languages.map((String language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(language),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gmail display language:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: selectedGmailLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGmailLanguage = newValue ?? 'English';
                      });
                    },
                    items: languages.map((String language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(language),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  CheckboxListTile(
                    title: Text('Enable input tools'),
                    value: enableInputTools,
                    onChanged: (bool? value) {
                      setState(() {
                        enableInputTools = value ?? false;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Right-to-left editing support:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      RadioListTile<String>(
                        title: Text('Right-to-left editing support off'),
                        value: 'Right-to-left editing support off',
                        groupValue: selectedEditingSupport,
                        onChanged: (String? value) {
                          setState(() {
                            selectedEditingSupport = value ?? '';
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Right-to-left editing support on'),
                        value: 'Right-to-left editing support on',
                        groupValue: selectedEditingSupport,
                        onChanged: (String? value) {
                          setState(() {
                            selectedEditingSupport = value ?? '';
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Phone Numbers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Default country code:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: selectedCountry,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue ?? 'United States';
                      });
                    },
                    items: countries.map((String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Signatures',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Signature:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: selectedSignature,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedSignature = newValue ?? 'my signature';
                          });
                        },
                        items: savedSignatures.map((String signature) {
                          return DropdownMenuItem<String>(
                            value: signature,
                            child: Text(signature),
                          );
                        }).toList(),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Open text editing for selected signature
                              // Provide options for fonts, bold text, etc.
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              // Delete selected signature
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Add New Signature:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            newSignature = value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter new signature',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Add new signature to the list
                          setState(() {
                            savedSignatures.add(newSignature);
                            selectedSignature = newSignature;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Signature Defaults',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('For New Emails Use:'),
                      DropdownButton<String>(
                        value: 'my signature', // Default value
                        onChanged: (String? newValue) {
                          // Handle dropdown selection
                        },
                        items: savedSignatures.map((String signature) {
                          return DropdownMenuItem<String>(
                            value: signature,
                            child: Text(signature),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('On Reply/Forward Use:'),
                      DropdownButton<String>(
                        value: 'my signature', // Default value
                        onChanged: (String? newValue) {
                          // Handle dropdown selection
                        },
                        items: savedSignatures.map((String signature) {
                          return DropdownMenuItem<String>(
                            value: signature,
                            child: Text(signature),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: insertBeforeQuotedText,
                        onChanged: (bool? value) {
                          setState(() {
                            insertBeforeQuotedText = value ?? false;
                          });
                        },
                      ),
                      Text('Insert signature before quoted text in replies'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stars',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Drag the stars between the lists.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image. ',
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'In use:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return Wrap(
                      spacing: 5,
                      children: starsInUse.map((star) {
                        return Draggable<String>(
                          data: star,
                          child: Text(star),
                          feedback: Material(
                            child: Text(star),
                          ),
                          childWhenDragging: Container(),
                        );
                      }).toList(),
                    );
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                    setState(() {
                      starsInUse.add(data!);
                      starsNotInUse.remove(data);
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Not in use:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return Wrap(
                      spacing: 5,
                      children: starsNotInUse.map((star) {
                        return Draggable<String>(
                          data: star,
                          child: Text(star),
                          feedback: Material(
                            child: Text(star),
                          ),
                          childWhenDragging: Container(),
                        );
                      }).toList(),
                    );
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                    setState(() {
                      starsNotInUse.add(data!);
                      starsInUse.remove(data);
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Presets:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Set preset to 1 star
                      starsInUse = ['⭐'];
                      starsNotInUse = ['⭐⭐', '⭐⭐⭐', '⭐⭐⭐⭐', '⭐⭐⭐⭐⭐'];
                    });
                  },
                  child: Text('1 star'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Set preset to 4 stars
                      starsInUse = ['⭐', '⭐', '⭐', '⭐'];
                      starsNotInUse = ['⭐⭐⭐', '⭐⭐⭐⭐⭐'];
                    });
                  },
                  child: Text('4 stars'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Set preset to all stars
                      starsInUse = ['⭐', '⭐', '⭐', '⭐', '⭐⭐', '⭐⭐⭐', '⭐⭐⭐⭐', '⭐⭐⭐⭐⭐'];
                      starsNotInUse = [];
                    });
                  },
                  child: Text('All stars'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GeneralSetting(),
  ));
}
