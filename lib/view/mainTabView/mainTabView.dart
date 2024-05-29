import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/tabButton.dart';
import 'package:cocosite/view/home/homeView.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {

  int SelectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: storageBucket, 
        child: selectPageView,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: SizedBox(
      //   width: 60,
      //   height: 60,
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       if (SelectTab !=2 ) {
      //         SelectTab = 2;
      //         selectPageView = const HomeView();
      //       } 
      //       if(mounted) {
      //         setState(() {
                
      //         });
      //       }
      //     },
      //     shape: const CircleBorder(),
      //     backgroundColor: SelectTab == 2 ? TColor.primary : TColor.placeholder, 
      //     child: Container(
      //       width: 60,
      //       height: 60,
      //       alignment: Alignment.center,
      //       child: Image.asset(
      //         "assets/images/icon-home.png",
      //         height: 30,
      //         width: 30,
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: TColor.white,
          surfaceTintColor: TColor.white,
          shadowColor: Colors.black,
          elevation: 1,
          notchMargin: 8,
          shape: const CircularNotchedRectangle(),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  title: "Menu",
                  icon: "assets/images/icon-menu.png",
                  onTap: () {
                    if (SelectTab !=1 ) {
                      SelectTab = 1;
                      selectPageView = const HomeView();
                    } 
                    if(mounted) {
                      setState(() {
                        
                      });
                    }
                  }, 
                  isSelected: SelectTab == 1
                ),
                TabButton(
                  title: "Pesanan",
                  icon: "assets/images/icon-shop.png",
                  onTap: () {
                    if (SelectTab !=2 ) {
                      SelectTab = 2;
                      selectPageView = const HomeView();
                    } 
                    if(mounted) {
                      setState(() {
                        
                      });
                    }
                  }, 
                  isSelected: SelectTab == 2
                ),
                TabButton(
                  title: "Notifikasi",
                  icon: "assets/images/icon-bell.png",
                  onTap: () {
                    if (SelectTab !=3 ) {
                      SelectTab = 3;
                      selectPageView = const HomeView();
                    } 
                    if(mounted) {
                      setState(() {
                        
                      });
                    }
                  }, 
                  isSelected: SelectTab == 3
                ),
                TabButton(
                  title: "Pengaturan",
                  icon: "assets/images/icon-setting.png",
                  onTap: () {
                    if (SelectTab !=4 ) {
                      SelectTab = 4;
                      selectPageView = const HomeView();
                    } 
                    if(mounted) {
                      setState(() {
                        
                      });
                    }
                  }, 
                  isSelected: SelectTab == 4
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}