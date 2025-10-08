import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class imageview extends StatefulWidget {
  const imageview({super.key});

  @override
  State<imageview> createState() => _imageviewState();
}

class _imageviewState extends State<imageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu), title: Text("imageView")),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,

            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://www.teahub.io/photos/full/10-104340_3d-background-png-blue-background-design-png.jpg',
                ),
              ),
            ),

            child: Image.asset(

              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.person, size: 50, color: Colors.black);
              },
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return frame == null ? CircularProgressIndicator() : child;
              },


              width: 50,
              height: 50,

              // color: Colors.red,
              // colorBlendMode: BlendMode.modulate,
              // opacity: AlwaysStoppedAnimation(0.2),
              // fit:BoxFit.contain,
              //  repeat: ImageRepeat.repeatX,
              // alignment:Alignment.centerLeft,
              //  centerSlice: Rect.fromLTWH(20, 20, 10, 10),
              //  matchTextDirection: true,
              //  gaplessPlayback: true,
              //  isAntiAlias: true,
              // package: 'my_package',
              // filterQuality: FilterQuality.medium,
              // cacheWidth: 400, cacheHeight: 400,
              key: ValueKey("logo"),
              "assets/images/boy.png",
            ),
          ),

          Container(
            width: 100,
            height: 100,
            child: Image.network(
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return frame == null ? CircularProgressIndicator() : child;
              },
              // loadingBuilder: (context, child, progress) {
              //   if (progress == null) return child;
              //   return CircularProgressIndicator();
              // },

              // errorBuilder: (context, error, stackTrace) {
              //   return Icon(Icons.error);
              // },
              "https://png.pngtree.com/png-clipart/20230504/original/pngtree-3d-food-burger-multi-layered-colorful-three-dimensional-effect-png-image_9136644.png",
            ),
          ),

          // Container(
          //   height: 200,
          //    width: 200,
          //    decoration: BoxDecoration(
          //      image: DecorationImage(
          //
          //         scale:1,
          //        onError: (exception, stackTrace) {
          //          print("Error loading image: $exception");
          //        },
          //         image:NetworkImage("https://png.pngtree.com/png-clipart/20230504/original/pngtree-3d-food-burger-multi-layered-colorful-three-dimensional-effect-png-image_9136644.png"),
          //      )
          //    ),
          // ),

          Container(
            width: 100,
             height: 100,
             child: CachedNetworkImage(
               fadeInCurve: Curves.easeIn,
               // fadeInDuration: const Duration(milliseconds: 500),
               // fadeOutDuration: const Duration(milliseconds: 1000),
               filterQuality: FilterQuality.high,
               errorWidget: (context, url, error) => const Icon(Icons.error, size: 50, color: Colors.red),
               progressIndicatorBuilder: (context, url, downloadProgress) =>
                   CircularProgressIndicator(value: downloadProgress.progress),

               imageUrl: "https://png.pngtree.com/png-clipart/20230504/original/pngtree-3d-food-burger-multi-layered-colorful-three-dimensional-effect-png-image_9136644.png" ,),
          )

        ],
      ),
    );
  }
}
