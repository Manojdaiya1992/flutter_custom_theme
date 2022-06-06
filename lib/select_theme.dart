import 'package:custom_themes/themes/custom_themes.dart';
import 'package:custom_themes/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTheme extends StatelessWidget {
  CustomTheme({Key? key}) : super(key: key);

  late final List<ThemeData> themes = Themes().themes;
  final int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Theme"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 100.0),
        children: themeCard(themes, context),
      ),
    );
  }
}

List<Widget> themeCard(List<ThemeData> themes, BuildContext context) {
  List<Widget> themeContainers = [];
  int temp = 0;
  for (var theme in themes) {
    themeContainers.add(container(theme.primaryColor, temp, context));
    temp++;
  }
  return themeContainers;
}

ElevatedButton container(Color color, int temp, BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      context.read<ThemeProvider>().updateThemeIndex(temp);
    },
    style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        fixedSize: const Size(100, 100),
        primary: color),
    child: temp != context.watch<ThemeProvider>().selectedTheme
        ? const Text("")
        : const Center(
            child: Text("Selected"),
          ),
  );
}
