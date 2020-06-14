import 'package:shared_preferences/shared_preferences.dart';
String baseURL="https://mistmyfirstproject.000webhostapp.com/";

setvalue(String key,String value) async {

  SharedPreferences storage = await SharedPreferences.getInstance();
  await storage.setString(key, value);
}

getvalue(String key) async {

  SharedPreferences storage = await SharedPreferences.getInstance();
  return await storage.getString(key);
}