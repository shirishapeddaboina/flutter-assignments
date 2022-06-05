import 'package:flutter/material.dart';
import 'package:flutter_application_2/geolocator/location_service.dart';
import 'package:flutter_application_2/geolocator/weather_result.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GeoLocationScreen extends StatefulWidget {
const GeoLocationScreen({Key? key}) : super(key: key);

@override
State<GeoLocationScreen> createState() => _GeoLocationScreenState();
}

class _GeoLocationScreenState extends State<GeoLocationScreen> {
String _temperature = '';
String _stationName = '';
String _humidity = '';
String _clouds = '';

bool _isBusy = false;
bool _isVisible = false;

Future<LocationService> getGeoLocation() async {
LocationService service = LocationService();
await service.getCurrentLocation();
return service;
}

@override
Widget build(BuildContext context) {
TextEditingController latController = TextEditingController();
TextEditingController lonController = TextEditingController();
return Scaffold(
appBar: AppBar(
title: const Text('Weather Report App'),
),
body: Padding(
padding: const EdgeInsets.all(8.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Expanded(
child: TextField(
controller: latController,
decoration: InputDecoration(
labelText: 'Latitude',
hintText: 'Enter Latitude Value',
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0)),
),
),
),
const SizedBox(height: 10.0),
Expanded(
child: TextField(
controller: lonController,
decoration: InputDecoration(
labelText: 'Longitude',
hintText: 'Enter Longitude Value',
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0)),
),
),
),
const SizedBox(height: 10.0),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(
onPressed: () async {
var service = await getGeoLocation();
latController.text = service.latitude.toString();
lonController.text = service.longitude.toString();
},
child: const Text('Get Current Location'),
),
const SizedBox(width: 10.0),
ElevatedButton(
onPressed: () async {
setState(() {
_isBusy = true;
});
double latitude = double.parse(latController.text);
double longitude = double.parse(lonController.text);

var weatherResult = WeatherResult();

await weatherResult.getWeatherReport(latitude, longitude);

setState(() {
_temperature = weatherResult.temperature;
_clouds = weatherResult.clouds;
_humidity = weatherResult.humidity;
_stationName = weatherResult.stationName;
_isBusy = false;
_isVisible = true;
});
},
child: const Text('Get Weather Report'),
),
],
),
const SizedBox(height: 10.0),
Visibility(
visible: _isBusy,
child: SpinKitFadingCircle(
itemBuilder: (BuildContext context, int index) {
return DecoratedBox(
decoration: BoxDecoration(
color: index.isEven ? Colors.red : Colors.green,
),
);
},
),
),
const SizedBox(height: 10.0),
Visibility(
visible: _isVisible,
child: Card(
elevation: 10.0,
child: Column(
children: [
Row(
children: [
const Expanded(
child: Text('Station Name :'),
),
Expanded(
child: Text(_stationName),
)
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Expanded(
child: Text('Temperature :'),
),
Expanded(
child: Text(_temperature),
)
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Expanded(
child: Text('Humidity :'),
),
Expanded(
child: Text(_humidity),
)
],
),
const SizedBox(height: 10.0),
Row(
children: [
const Expanded(
child: Text('Clouds :'),
),
Expanded(
child: Text(_clouds),
)
],
),
const SizedBox(height: 10.0),
],
),
),
)
],
),
),
);
}
}
