


import "package:flutter/material.dart";

import "configuration/theme.dart" as theme;
import "configuration/info.dart" as info;

import "navigation/homenavbar.dart" as homenavbar;
import "screens/home.dart" as home;
//R2 import "screens/profile.dart" as profile;



void main() => runApp(TheApp());


class TheApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        final AppBar HomeNavBar = homenavbar.HomeNavBar;

        final home.HomeScreen HomeScreen = home.HomeScreen(
            homeNavBar: HomeNavBar,
            bgColor: theme.RelentlessGreen,
        );

        // Use a SECOND ROUTE R2
        //
        //   - currently the profile is initialized in the
        //     homeNavBar since it's one of the two buttons
        //
        //R2 final profile.ProfileScreen ProfileScreen = profile.ProfileScreen();

        return MaterialApp(

            theme: theme.appTheme,
            title: info.AppTitle,

            routes: {
                '/': (BuildContext context) => HomeScreen,
        //R2        '/profile': (BuildContext context) => ProfileScreen,
            },
        );
    }
}
