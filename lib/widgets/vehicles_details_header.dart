import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VehicleDetailsHeader extends StatelessWidget {
  VehicleDetailsHeader(
      {Key? key, required this.name, this.imageUrl, this.videoUrl})
      : super(key: key);

  final String name;
  String? imageUrl;
  String? videoUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        imageUrl == null
            ? Image.asset("assets/images/rocket.jpg")
            : Image.network(
                imageUrl!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset("assets/images/rocket.jpg"),
              ),
        Positioned(
          bottom: 5,
          left: 10.0,
          right: 10.0,
          child: Container(
            color: Colors.black45,
            padding: const EdgeInsets.all(5),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 26),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        (videoUrl != null)
            ? Align(
                alignment: const Alignment(0.9, 1.0),
                heightFactor: 4,
                child: FloatingActionButton(
                  onPressed: () {
                    _onVideoClicked(videoUrl!);
                  },
                  child: const Icon(Icons.video_settings_sharp),
                ),
              )
            : Container(),
      ],
    );
  }

  Future<void> _onVideoClicked(String url) async {
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
