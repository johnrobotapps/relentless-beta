
import "package:flutter/material.dart";

/*  COOL COLORS MADE FROM
  https://coolors.co/010400-0e190c-1b2e18-294324-36572f-436c3b-537a4c-63885c-83a47c-c2dbbd

final List<Map<String, Object>> colorscheme = [
  {"name":"Rich Black FOGRA 39", "hex":"010400", "rgb":[1,4,0]},
  {"name":"Dark Jungle Green",   "hex":"0e190c", "rgb":[14,25,12]},
  {"name":"Phthalo Green",       "hex":"1b2e18", "rgb":[27,46,24]},
  {"name":"Kombu Green",         "hex":"294324", "rgb":[41,67,36]},
  {"name":"Hunter Green",        "hex":"36572f", "rgb":[54,87,47]},
  {"name":"Fern Green",          "hex":"436c3b", "rgb":[67,108,59]},
  {"name":"Fern Green Umm",      "hex":"537a4c", "rgb":[83,122,76]},
  {"name":"Russian Green",       "hex":"63885c", "rgb":[99,136,92]},
  {"name":"Asparagus",           "hex":"83a47c", "rgb":[131,164,124]},
  {"name":"Tea Green",           "hex":"c2dbbd", "rgb":[194,219,189]},
];
*/

const int RelentlessGreen_hex = 0xff0E190C;

const Map<int, Color> ColorCodes = {
  50: Color.fromRGBO(133, 200, 120, 1),
  100: Color.fromRGBO(115, 190, 100, 1),
  200: Color.fromRGBO(93, 150, 83, 1),
  300: Color.fromRGBO(80, 129, 71, 1),
  400: Color.fromRGBO(67, 108, 59, 1),
  500: Color.fromRGBO(54, 87, 47, 1),
  600: Color.fromRGBO(41, 67, 36, 1),
  700: Color.fromRGBO(27, 46, 24, 1),
  800: Color.fromRGBO(14, 25, 12, 1),
  900: Color.fromRGBO(1, 4, 0, 1),
};

// can get it as a final??
final RelentlessGreen = (ColorCodes[700])!;

final ThemeData appTheme = ThemeData(
  primarySwatch: MaterialColor(
    0xff36572F, ColorCodes,));