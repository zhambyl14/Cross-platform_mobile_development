import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:connectivity/connectivity.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Убираем кнопку "назад"
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Settings',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSquareButton(
                text: 'Language',
                icon: Icons.language,
                onPressed: () {},
              ),
              _buildSquareButton(
                text: 'Donate',
                icon: Icons.monetization_on,
                onPressed: () {},
              ),
              _buildSquareButton(
                text: 'Logout',
                icon: Icons.logout,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSquareButton(
                text: 'Mode',
                icon: Icons.lightbulb_outline,
                onPressed: () {},
              ),
              _buildSquareButton(
                text: 'Mute',
                icon: Icons.volume_off,
                onPressed: () {},
              ),
              _buildSquareButton(
                text: 'Map',
                icon: Icons.map,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                },
              ),
              
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 240.0),
              child: Text(
                '© YMBA SE-2225\n   Version: 1.0.0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSquareButton({required String text, required IconData icon, required VoidCallback onPressed}) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 150, 150, 208),   
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40), // Увеличиваем размер иконки до 40
            SizedBox(height: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}

Future<bool> _checkInternetConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    return false; // нет соединения с интернетом
  }
  return true; // есть соединение с интернетом
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: FutureBuilder<bool>(
        future: _checkInternetConnection(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Ожидание результата проверки соединения
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // В случае ошибки при проверке соединения
            return Center(child: Text('Ошибка при проверке интернет-соединения'));
          } else if (!snapshot.data!) {
            // Если нет соединения с интернетом
            return Center(child: Text('Нет подключения к интернету'));
          } else {
            // Если есть интернет, отображаем карту
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(51.090682, 71.418236),
                zoom: 15,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('mabyMarker'),
                  position: LatLng(51.090682, 71.418236),
                  infoWindow: InfoWindow(
                    title: 'Company YMBA (Puzzle Escape)',
                    snippet: 'пр-т. Мангилик Ел., Астана 020000',
                  ),
                ),
              },
            );
          }
        },
      ),
    );
  }
}


