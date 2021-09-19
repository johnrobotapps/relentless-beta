
import "package:flutter/material.dart";


class FoodJournalHome extends StatelessWidget {

    final AppBar homeNavBar;
    final Color bgColor;

    FoodJournalHome({
        required this.homeNavBar,
        required this.bgColor,
    });

    @override
    Widget build(Buildcontext context) {

        return Scaffold(

            appBar: homeNavBar,
            backgroundColor: bgColor,

            body: Column(
                children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Center(Text("DailyMacroDisplay")),
                    ),
                    Expanded(
                        flex: 6,
                        child: Center(Text("ListofDailyMacros")),
                    ),
                    Expanded(
                        flex: 2,
                        child: Center(Text("JournalNavBar")),
                    ),
                ],
            ),

        );
    }

}
