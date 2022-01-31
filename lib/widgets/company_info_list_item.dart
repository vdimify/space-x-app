import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyInfoListItem extends StatelessWidget {
  const CompanyInfoListItem({
    Key? key,
    required this.mapKey,
    required this.mapValue,
  }) : super(key: key);

  final String mapKey;
  final String mapValue;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, top: 5),
                child: Text(
                  mapKey,
                  textAlign: TextAlign.right,
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Linkify(
                  textAlign: TextAlign.left,
                  onOpen: _onOpen,
                  text: mapValue,
                ),
              )),
        ],
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url, enableJavaScript: true, forceWebView: true);
    } else {
      throw 'Could not launch $link';
    }
  }
}
