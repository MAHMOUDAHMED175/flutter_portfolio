import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';


class ImageViewer {
  ImageViewer(BuildContext context, List<String> image,
      {required int crossAxisCount, required double childAspectRatio}) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                  appBar: AppBar(
                      backgroundColor: Colors.black,
                      leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      )),
                  backgroundColor: Colors.black,
                  body: Container(
                    color: Colors.black,
                    child: Center(
                        child: CarouselSlider.builder(
                      itemCount: image.length,

                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          // Text("${QuotesCubit.get(context).quotes[0]}"),
                          PhotoView(
                              tightMode: true,
                              imageProvider: AssetImage(
                                image[itemIndex],
                              )),
                      //     quotesItem(
                      //   state,
                      //   context,
                      //   quotesWithImagesHiveEntity: image[itemIndex],
                      // ),
                      options: CarouselOptions(
                        height: double.infinity,
                        viewportFraction: 0.75,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 8),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.linear,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.4,
                        animateToClosest: true,
                        disableCenter: true,
                        scrollDirection: Axis.vertical,
                      ),
                    )),
                  )),
            ),
          ),
        );
      },
    );
  }
}
