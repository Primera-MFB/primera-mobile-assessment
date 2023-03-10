import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PromotionBanner extends StatefulWidget {
  const PromotionBanner({Key? key}) : super(key: key);

  @override
  State<PromotionBanner> createState() => _PromotionBannerState();
}

class _PromotionBannerState extends State<PromotionBanner> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(children: const [
      PromotionBannerItem(promotionBannerImageUrl: '', promotionLink: ''),
      PromotionBannerItem(promotionBannerImageUrl: '', promotionLink: ''),
      PromotionBannerItem(promotionBannerImageUrl: '', promotionLink: ''),
    ]);
  }
}

class PromotionBannerItem extends StatelessWidget {
  final String promotionBannerImageUrl;
  final String promotionLink;
  const PromotionBannerItem({
    super.key,
    required this.promotionBannerImageUrl,
    required this.promotionLink,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //todo: open webview of promotion link here
        //promotionLink
      },
      child: CachedNetworkImage(
        width: double.infinity,
        imageUrl: promotionBannerImageUrl,
        imageBuilder: (context, imageProvider) => Container(
          height: 120,
          width: double.infinity,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor,
              width: 1.0,
            ),
          ),
        ),
        placeholder: (context, url) =>
            LinearProgressIndicator(color: Theme.of(context).cardColor),
        errorWidget: (context, url, error) => Container(
          height: 120,
          width: double.infinity,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/sample-ads-banner.png'),
              fit: BoxFit.cover,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
