import 'package:flutter/material.dart';
import 'package:movies_app/Config/Theme/Theme.dart';
import 'package:movies_app/Core/Utills/ColorsManager.dart';
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
List<Widget> tabs = [
     HomeTab(),
     BrowseTab(),
     SearchTab(),
     WatchlistTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: tabs[selectedIndex],
      bottomNavigationBar: Theme(
          data: AppTheme.MyAppTheme,
          child:   BottomNavigationBar(
            backgroundColor:  Colors.black,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.HomeLogo)),
                label: StringsManager.homeLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.SearchLogo) ,),
                label: StringsManager.searchLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.BrowseLogo)),
                label: StringsManager.browseLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.WatchListLogo)),
                label: StringsManager.watchListLabel,
              ),
            ],
          ),
      )
    );
  }
}
