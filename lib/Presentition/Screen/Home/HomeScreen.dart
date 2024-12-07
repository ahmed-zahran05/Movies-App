import 'package:flutter/material.dart';
import 'package:movies_app/Core/Utills/StringsManager.dart';
import 'package:movies_app/Core/Utills/assetsManager.dart';

import 'Tabs/BrowseTab/Browse.dart';
import 'Tabs/HomeTab/HomeTab.dart';
import 'Tabs/SearchTab/Search.dart';
import 'Tabs/WatchListTab/WatchList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> tabs = [HomeTab(), BrowseTab(), SearchTab(), WatchlistTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: tabs[selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).canvasColor,
        ),
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.HomeLogo)),
                label: StringsManager.homeLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.SearchLogo),
                ),
                label: StringsManager.searchLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.BrowseLogo)),
                label: StringsManager.browseLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.WatchListLogo)),
                label: StringsManager.watchListLabel,
              )
            ]),
      ),
    );
  }
}
