import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/view/mainTabView/mainTabView.dart';
import 'package:flutter/material.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  List pageArr = [
    { 
      "title": "Pengiriman\ncepat dan mudah",
      "subtitle": "Cocok untuk kirim pesanan ke rumah, toko, dan semua tempat.",
      "image": "assets/images/cocosite.png",
    },
    { 
      "title": "Pelacakan langsung",
      "subtitle": "realtime tracking dari pesanan anda di aplikasi setelah anda melakukan pemesanan.",
      "image": "assets/images/cocosite.png",
    },
  ];

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  alignment: Alignment.center,
                  child: Image.asset(
                    pObj["image"].toString(), 
                    width: media.width * 0.9, 
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  pObj["title"].toString(), 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText, 
                    fontSize: 28, 
                    fontWeight: FontWeight.w800
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  pObj["subtitle"].toString(), 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText, 
                    fontSize: 16, 
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          }),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: index == selectPage
                      ? TColor.primary
                      : TColor.placeholder,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Roundbutton(
                  title: "Lanjut", 
                  onPressed: () {
                    if(selectPage >= 1) {
                      //! Home Screen
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const MainTabView()
                        ),
                      );
                    } else {
                      //! Next Screen
                      selectPage = selectPage + 1;
                      controller.animateToPage(
                        selectPage, 
                        duration: const Duration(milliseconds: 500), 
                        curve: Curves.bounceInOut
                      );
                    }
                  } 
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )

        ],
      ),
    );
  }
}