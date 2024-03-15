import 'dart:ui';

import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/app/ui/constrained_box.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

void showQrCode(BuildContext context, String url) {
  showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return NotificationMenu(
          url: url,
        );
      });
}

class NotificationMenu extends StatelessWidget {
  const NotificationMenu({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
      child: AppConstrainedBox(
        child: SizedBox(
          height: 1000,
          width: 1000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: PrettyQrView.data(
                  data: url,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 30, left: 500, right: 500),
                child: AppTextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: 'Вернуться'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
