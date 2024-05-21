import 'package:flutter/material.dart';
import 'sqlite.dart'; // Import your DatabaseHelper
import 'users.dart'; // Import your Users model

class UserScreen extends StatefulWidget {
  final String username;

  const UserScreen({required this.username});

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool isWorldSelected = false;
  bool isRegionSelected = false;
  final DatabaseHelper dbHelper = DatabaseHelper();
  final TextEditingController _usernameController = TextEditingController(); // Controller for the username field

  @override
  void initState() {
    super.initState();
    _usernameController.text = widget.username; // Set initial value for username field
  }

  void _updateUser() async {
    Users updatedUser = Users(id: 1, usrName: widget.username, usrPassword: "newPassword"); // Example user update
    await dbHelper.updateUser(updatedUser);
    // Perform actions after updating the user, like showing a success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('User updated successfully')),
    );
  }

  void _updateUsername(String newUsername) async {
    // Update the username in the database
    Users updatedUser = Users(id: 1, usrName: newUsername, usrPassword: ""); // Example user update
    await dbHelper.updateUser(updatedUser);
    
    // Update the state to reflect the new username
    setState(() {
      _usernameController.text = newUsername;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Username updated successfully')),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7F7FCA),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Edit Username"),
                            content: TextFormField(
                              controller: _usernameController, // Set controller for the username field
                              decoration: InputDecoration(
                                labelText: 'New Username',
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Perform the update action here
                                  _updateUsername(_usernameController.text);
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                                child: Text('Update'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, // Remove the default padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Set the border radius
                        side: BorderSide(color: Colors.black, width: 2), // Add a black border
                      ),
                      backgroundColor: Color.fromARGB(240, 191, 191, 255), // Set the button background color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // Minimize the column width
                        children: [
                          Image.asset('assets/edit.png', height: 30, width: 30), // Icon
                          SizedBox(height: 2), // Add some space between the icon and text
                          Text('EDIT', style: TextStyle(color: Colors.black, fontFamily: 'Times New Roman', fontSize: 10)), // Text
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform another action specific to the user
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Set the border radius
                        side: BorderSide(color: Colors.black, width: 2), // Add a black border
                      ),
                      backgroundColor: Color.fromARGB(240, 191, 191, 240), // Set the button background color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // Minimize the column width
                        children: [
                          Image.asset('assets/logout.png', height: 30, width: 30), // Icon
                          SizedBox(height: 2), // Add some space between the icon and text
                          Text('LOGOUT', style: TextStyle(color: Colors.black, fontFamily: 'Times New Roman', fontSize: 10)), // Text
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              // User avatar (replace with actual image)
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Set the border radius
                    color: Color.fromARGB(240, 191, 191, 240), // Set the square color
                    border: Border.all(color: Colors.black, width: 5),
                  ),
                  width: 120, // Set the square width
                  height: 131, // Set the square height to accommodate the text height
                  padding: EdgeInsets.all(5), // Set padding from all sides
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0), // Set the image corner radius
                        child: Transform.scale(
                          scale: 0.9, // Scale down the image
                          child: Image.asset(
                            'assets/Group.png', // Image path
                            fit: BoxFit.scaleDown, // Image fill
                          ),
                        ),
                      ),
                      Text(
                        '50', // Text below the image
                        style: TextStyle(color: Colors.black, fontFamily: 'Times New Roman'), // Text style
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0),
              Center(
                child: Text(
                  'Welcome, ${_usernameController.text}!', // Replace with user's name
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
                ),
              ),
              SizedBox(height: 16.0),
              // Add buttons or actions for user-specific features
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Perform user-specific action
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove the default padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Set the border radius
                      side: BorderSide(color: Colors.black, width: 2), // Add a black border
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Set the button background color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add padding for the text
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Minimize the column width
                      children: [
                        SizedBox(height: 10), // Add some space between the icon and text
                        Text('Achievements', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: 'Times New Roman')), // Text
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Stats',
                  // Replace with user's name
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
                ),
              ),
              Divider(
                height: 1, // Line height
                thickness: 1, // Line thickness
                color: Colors.black, // Line color
              ),
              Center(
                child: Text(
                  'Level: 50\nRecord: 72\nCoins: 50',
                  // Replace with user's name
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Times New Roman'),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                color: Color.fromARGB(240, 191, 191, 240), // Card background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50), // Set the card corner radius
                  side: BorderSide(color: Colors.black, width: 2), // Add a black border
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Top', // "Top" text
                        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isWorldSelected = true;
                                isRegionSelected = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isWorldSelected ? Color.fromARGB(237, 122, 122, 176) : Color.fromARGB(240, 191, 191, 240), // Set the button background color
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add padding for the text
                            ),
                            child: Text('World', style: TextStyle(color: isWorldSelected ? Colors.black : Colors.black, fontFamily: 'Times New Roman')),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isWorldSelected = false;
                                isRegionSelected = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isRegionSelected ? Color.fromARGB(237, 122, 122, 176) : Color.fromARGB(240, 191, 191, 240), // Set the button background color
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add padding for the text
                            ),
                            child: Text('Region', style: TextStyle(color: isRegionSelected ? Colors.black : Colors.black, fontFamily: 'Times New Roman')),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      if (isWorldSelected)
                        Text('Player 1\nPlayer 2\nPlayer 3\nPlayer 4\nPlayer 5', style: TextStyle(fontFamily: 'Times New Roman')), // Content for "World" button
                      if (isRegionSelected)
                        Text('Player 1\nPlayer 2\nPlayer 3\nPlayer 4', style: TextStyle(fontFamily: 'Times New Roman')), // Content for "Region" button
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
