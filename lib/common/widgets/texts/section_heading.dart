import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FSectionHeading extends StatelessWidget {
  final String title, buttonTitle;
  final void Function()? onPressed; // final VoidCallBack onPressed
  final bool showActionButton;
  final Color? textColor;
  const FSectionHeading({
    super.key,
    required this.title,
    this.onPressed,
    this.showActionButton = true,
    this.textColor,
    this.buttonTitle = 'View all',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton
            ? TextButton(
                onPressed: onPressed,
                child: Text(buttonTitle),
              )
            : const SizedBox(),
      ],
    );
  }
}
