

import "package:flutter/material.dart";


class DailyLogger extends StatelessWidget {

    final AppBar homeNavBar;
    final Color bgColor;

    DailyLogger({
        required this.homeNavBar,
        required this.bgColor,
    });

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: homeNavBar,

            backgroundColor: bgColor,

            children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text("CurrentDayMacroDisplay")
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text("CurrentDayLogDisplay")
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text("JournalNavBar")
                    )
                ),
            ],
        );

    }
}
