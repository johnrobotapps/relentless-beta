


import "package:flutter/material.dart";


// Move this to primitives location
typedef PanelButton = _PanelButton Function(

    Color bgColor,
    String panelImage,
    String buttonText,

);


getPanelButton({

    BuildContext? context,
    Color bgColor = Colors.grey,
    String panelImage = "",
    String buttonText = "",

}) => _PanelButton(

    bgColor: bgColor,
    panelImage: panelImage,
    buttonText: buttonText,

);


class _PanelButton extends StatelessWidget {

    final Color bgColor;
    final String panelImage;
    final String buttonText;

    _PanelButton({

        required this.bgColor,
        required this.panelImage,
        required this.buttonText,
        Key? key,

    }) : super(key: key);

    @override
    Widget build(BuildContext context) {

        return LayoutBuilder(

            builder: (BuildContext context, BoxConstraints constraints) {

                double panelWidth = constraints.maxWidth;
                double panelHeight = constraints.maxHeight;

                return Stack(
                    //alignment:new Alignment(x, y)
                    children: <Widget>[

                        Container(

                            color: bgColor,
                            width: panelWidth,
                            //height: panelHeight,

                            child: Image(

                                image: AssetImage(panelImage),
                                fit: BoxFit.cover,
                            ),
                        ),

                        Positioned(
                            child: SizedBox(

                                width: panelWidth,
                                height: panelHeight,

                                child: TextButton(


                                    child: Text(

                                        buttonText,
                                        textScaleFactor: 2.6,
                                        style: TextStyle(
                                            color: Colors.black,
                                        ),

                                    ),

                                    // NAVIGATE
                                    //onPressed: () {},

                                    // DEBUG
                                    onPressed: () {
                                        print("$panelWidth x $panelHeight");
                                    },

                                    style: ButtonStyle(

                                        side: MaterialStateProperty.all(
                                            BorderSide(
                                                width: 5,
                                                color: Colors.black45,
                                            ),
                                        ),
                                        //padding: MaterialStateProperty.all(
                                        //    EdgeInsets.symmetric(
                                        //        horizontal: 5.0,
                                        //        vertical: 5.0,
                                        //    )
                                        //),
                                        //
                                        //elevation: MaterialStateProperty.all(
                                        //    30.0
                                        //),
                                        //
                                        //shadowColor: MaterialStateProperty.all(
                                        //    Colors.grey,
                                        //),

                                        backgroundColor: MaterialStateProperty.all(
                                            bgColor.withOpacity(0.65)
                                        ),

                                    ),

                                ),
                            ),
                        ),
                    ],
                );
        });
    }
}



