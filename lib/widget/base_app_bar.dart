import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarBase extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarBase(
      {super.key,
      required this.appBarObj,
      this.trailingBuilder,
      this.backgroundColor,
      this.centerBuilder, this.leadingBuilder});

  final AppBar appBarObj;
  final Widget Function(BuildContext)? trailingBuilder;
  final Widget Function(BuildContext)? centerBuilder;
  final Widget Function(BuildContext)? leadingBuilder;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.fromLTRB(16, statusBarHeight, 16, 0),
      height: preferredSize.height + statusBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadingBuilder != null ? leadingBuilder!(context) : Container(),
          centerBuilder != null ? centerBuilder!(context) : Container(),
          trailingBuilder != null ? trailingBuilder!(context) : Container()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarObj.preferredSize.height);
}
