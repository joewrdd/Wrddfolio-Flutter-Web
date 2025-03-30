import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/main/ui/footer/widgets/footer_tile.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250, right: 250, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'Connect With Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              FooterTile(
                isSvg: true,
                text: 'Youtube',
                image: ConstantImages.youtubeIcon,
              ),
              const SizedBox(height: 16),
              FooterTile(
                isSvg: true,
                text: 'Github',
                image: ConstantImages.githubIcon,
              ),
              const SizedBox(height: 16),
              FooterTile(
                isSvg: true,
                text: 'Discord',
                image: ConstantImages.discordIcon,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Social Media',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              FooterTile(
                isSvg: false,
                text: 'Instagram',
                image: ConstantImages.instagramLogo,
              ),
              const SizedBox(height: 16),
              FooterTile(
                isSvg: false,
                text: 'Twitter',
                image: ConstantImages.xLogo,
              ),
              const SizedBox(height: 16),
              FooterTile(
                isSvg: false,
                text: 'LinkedIn',
                image: ConstantImages.linkedinIcon,
                height: 15,
                width: 15,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              FooterTile(text: 'Join The Team', noImage: true),
              const SizedBox(height: 16),
              FooterTile(text: 'Learn About WrddX', noImage: true),
              const SizedBox(height: 16),
              FooterTile(text: 'joewrdd@gmail.com', noImage: true),
            ],
          ),
        ],
      ),
    );
  }
}
