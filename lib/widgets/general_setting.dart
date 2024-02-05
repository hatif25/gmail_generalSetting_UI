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

  List<String> starsInUse = ['⭐']; // Stars in use
  List<String> starsNotInUse = [
    '⭐⭐',
    '⭐⭐⭐',
    '⭐⭐⭐⭐',
    '⭐⭐⭐⭐⭐'
  ]; // Stars not in use

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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Langauges:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          'Gmail display languages:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 300,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            // borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
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
                            menuMaxHeight: 300,
                            underline: Container(),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change language settings for other Google products',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1160,
                      height: 50,
                      child: Row(
                        children: [
                          Checkbox(
                            value: enableInputTools,
                            onChanged: (bool? value) {
                              setState(() {
                                enableInputTools = value ?? false;
                              });
                            },
                          ),
                          Text(
                            'Enable input tools ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              '- Use various text input tools to type in the language of your choice - '),
                          Text(
                            'Learn more',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1160,
                      height: 50,
                      child: Column(
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
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1160,
                      height: 50,
                      child: RadioListTile<String>(
                        title: Text('Right-to-left editing support on'),
                        value: 'Right-to-left editing support on',
                        groupValue: selectedEditingSupport,
                        onChanged: (String? value) {
                          setState(() {
                            selectedEditingSupport = value ?? '';
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Phone numbers :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 180,
                      ),
                      Text(
                        'Defualt Country Code :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 300,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                              // color: Colors.black,
                              ),
                          // borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectedCountry,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountry = newValue ?? 'United States';
                            });
                          },
                          items: countries.map((String country) {
                            return DropdownMenuItem<String>(
                              value:
                                  country, // Use the current country as the value
                              child: Text(country),
                            );
                          }).toList(),
                          menuMaxHeight: 300,
                          underline: Container(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Stars :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 180,
                      ),
                      Text(
                        'Drag the stars between the lists.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '  The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: SizedBox(
                      width: 1145,
                      height: 50,
                      child: Row(
                        children: [
                          Text('Preset:'),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '1 star',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '4 star',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'all stars',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1150,
                    height: 40,
                    child: Row(
                      children: [
                        Text('In use:'),
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
                  ),
                  SizedBox(
                    width: 1150,
                    height: 40,
                    child: Row(
                      children: [
                        Text(
                          'Not in use:',
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
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Signature:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    '(appended at the end of all outgoing messages)',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              TextButton(onPressed: () {}, child: Text('Learn more')),
              SizedBox(height: 10),
  
              SizedBox(
  child: Row(
    children: [
      SizedBox(
        width: 180,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Your Current Signature',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Handle edit signature action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Handle delete signature action
                    },
                  ),
                ],
              ),
              
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView.builder(
                  itemCount: savedSignatures.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(savedSignatures[index]),
                    );
                  },
                ),
              ),
                                        SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle create new signature action
                },
                child: Text('+  Create New',),
              ),

            ],
          ),
        ),
        
      ),
      
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(10),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Write Your New Signature',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  // Add additional buttons/icons for changing font, bold, underline, etc.
                  IconButton(
                    icon: Text('B'),
                    onPressed: () {
                      // Handle bold action
                    },
                  ),
                  IconButton(
                    icon: Text('U'),
                    onPressed: () {
                      // Handle underline action
                    },
                  ),
                  // Add more buttons/icons as needed
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                // Add widgets for writing new signature (text input, formatting buttons, etc.)
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write your new signature here...',
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
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const GeneralSetting());
}
