
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:plants/data/banner_images.dart';

class Banner2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20,),
        child: ImageSlideshow(
              width: double.infinity,
              height: 165,
              indicatorColor: Colors.green.shade700,
              indicatorBackgroundColor: Colors.grey,
              autoPlayInterval: 3000,
              isLoop: true,
          
          
          
          
          
              children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.network("https://i.ibb.co/9qNZzZx/Screenshot-2025-01-22-103233.png", fit: BoxFit.contain, ),),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.network("https://i.ibb.co/5MRz6xK/social-media-promo-template-indoor-potted-plants-23-2149482848.jpg",fit: BoxFit.contain)),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.network("https://i.ibb.co/r6WVQ40/plant-care-horizonal-banner-template-23-2150269339.jpg",fit: BoxFit.contain))
          ]),

    );
  }
}