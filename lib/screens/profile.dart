
import "package:flutter/material.dart";


class ProfileScreen extends StatelessWidget {

    final AppBar homeNavBar;

    ProfileScreen({
        required this.homeNavBar,
    });

    @override
    Widget build(BuildContext context) {

        return Scaffold(
            appBar: homeNavBar,
            backgroundColor: Colors.white,
        );
    }

}
