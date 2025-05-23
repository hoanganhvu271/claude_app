import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_colors.dart';

class TopAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions; // Added actions parameter

  const TopAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.actions, // Added actions parameter initialization
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
        decoration: BoxDecoration(
          color: ColorsLib.primaryBoldColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: -3,
              top: -3,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  splashColor: Colors.black.withOpacity(0.2),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            // Add actions to the right side of the app bar
            if (actions != null && actions!.isNotEmpty)
              Positioned(
                right: 0,
                top: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: actions!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}