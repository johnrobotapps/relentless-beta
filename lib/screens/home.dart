

import "package:flutter/material.dart";
import "../navigation/panelbuttons.dart" as navbuttons;



final Color bgColorHomePanel = Colors.grey;


class HomeScreen extends StatelessWidget {

    final AppBar homeNavBar;
    final Color bgColor;

    HomeScreen({

        required this.homeNavBar,
        required this.bgColor,

    });

    @override
    Widget build(BuildContext context) {

        final ExerciseLibraryPanelButton = navbuttons.getPanelButton(

            context: context,
            bgColor: bgColorHomePanel,
            panelImage: "assets/images/exerciselibrary.jpg",
            buttonText: "Exercise Library",
        );

        final FoodJournalPanelButton = navbuttons.getPanelButton(

            context: context,
            bgColor: bgColorHomePanel,
            panelImage: "assets/images/foodpanelbutton.jpg",
            buttonText: "Food Journal",

        );

        return Scaffold(

            appBar: homeNavBar,
            backgroundColor: bgColor,

            body  : Column(

                children: <Widget>[

                    Expanded(

                        flex:  6,

                        child: Container(

                            child: Image(

                                fit: BoxFit.cover,

                                image: AssetImage(
                                    "assets/images/pplfam_rp.jpg"
                                ),

                            ),
                        )
                    ),

                    Expanded(

                        flex:  2,

                        child: Container(
                            child: ExerciseLibraryPanelButton,
                        )
                    ),

                    Expanded(

                        flex:  2,

                        child: Container(
                            child: FoodJournalPanelButton,
                        )
                    ),

                ]
            ),
        );
    }
}
