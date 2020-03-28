import 'package:covid19_TG/theme/color/light_color.dart';
import 'package:covid19_TG/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class InformationTitleCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;

  const InformationTitleCard(
      {Key key,
      @required this.title,
      @required this.subTitle,
      @required this.icon,
      @required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Container(
      height: hp(18),
      width: wp(100),
//      padding: EdgeInsets.all(15),
      //margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: LightColor.cardBackground,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          new BoxShadow(
              color: Colors.grey[100],
              blurRadius: 4.0,
              spreadRadius: 3.5,
              offset: Offset(0.0, 2)),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: wp(3)),
                    Icon(
                      icon,
                      size: 40,
                      color: iconColor,
                    ),
                    SizedBox(width: wp(5)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: hp(3)),
                        Text(title,
                            style: AppTheme.h2Style.copyWith(
                                color: LightColor.darkgrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        SizedBox(height: hp(2)),
                        Text(subTitle,
                            style: AppTheme.h2Style.copyWith(
                                color: LightColor.darkgrey.withOpacity(0.5),
                                fontSize: 15))
                      ],
                    )
                  ]),
            )
          ]),
    );
  }
}
