import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  GoogleMapController? mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7F7FCA),
      appBar: AppBar(
        title: Text('Settings'),
        // Убираем кнопку "назад"
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-33.86, 151.20), // Сидней, Австралия
              zoom: 11,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),
          // Добавьте сюда другие виджеты, которые вам нужны на странице
        ],
      ),
    );
  }
}
