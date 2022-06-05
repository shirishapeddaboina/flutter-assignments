import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherResult {
late String stationName;
late String temperature;
late String humidity;
late String clouds;
late String countryCode;

Future<void> getWeatherReport(double latitude, double longitude) async {
var url = Uri.parse(
'http://api.geonames.org/findNearByWeatherJSON?formatted=true&lat=$latitude&lng=$longitude&username=sekharonline4u&style=full');

http.Response response = await http.get(url);

if (response.statusCode == 200) {
var data = response.body;

stationName = jsonDecode(data)['weatherObservation']['stationName'];
temperature = jsonDecode(data)['weatherObservation']['temperature'];
humidity = jsonDecode(data)['weatherObservation']['humidity'].toString();
clouds = jsonDecode(data)['weatherObservation']['clouds'];
countryCode = jsonDecode(data)['weatherObservation']['countryCode'];
}
}
}
