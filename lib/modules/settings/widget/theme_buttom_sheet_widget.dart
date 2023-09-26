import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/settings/widget/selectedd_option_widget.dart';
import 'package:islami_route_app/modules/settings/widget/unselected_option_widget.dart';

class ThemeButtomSheetWidget extends StatelessWidget {
  const ThemeButtomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25 , horizontal: 20),
        decoration: BoxDecoration(
          color: theme.primaryColor.withOpacity(0.7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectedOption(selectedTitle: 'Light'),
            const SizedBox(height: 30,),
            UnSelectedOption(unSelectedTitle: "Dark"),
          ],
        )
    );
  }
}
