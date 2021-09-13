import 'package:flutter/material.dart';
import 'TypeDefs.dart';
import 'ScreenUtil.dart';

class FullScreenWidthCell<T> extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final bool selected;
  final String backgroundImage;
  final Color backgroundColor;
  final double height;
  final double width;
  final double padding;

  FullScreenWidthCell(
      {Key key,
         this.child,
        this.backgroundImage,
        this.backgroundColor,
         this.onTap,
        this.height,
        this.width,
        this.selected = false,
        this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: context.themeSettings.smallPadding),
            padding: EdgeInsets.all(padding ?? context.themeSettings.defaultPadding),
            decoration: backgroundImage != null
                ? BoxDecoration(
              border: Border.all(width: 1, color: selected ? context.themeSettings.listingSelectedBorder : context.themeSettings.listingUnSelectedBorder),
              borderRadius: BorderRadius.all(Radius.circular(context.themeSettings.listingItemRadius)),
              image: DecorationImage(
                image: NetworkImage(backgroundImage!),
                fit: BoxFit.cover,
              ),
            )
                : BoxDecoration(
              border: Border.all(width: 1, color: selected ? context.themeSettings.listingSelectedBorder : context.themeSettings.listingUnSelectedBorder),
              borderRadius: BorderRadius.all(Radius.circular(context.themeSettings.listingItemRadius)),
              color: backgroundColor ?? (selected ? context.themeSettings.listingSelectedBackground : context.themeSettings.listingUnSelectedBackground),
            ),
            height: height,
            width: width,
            child: child));
  }
}