import 'package:app/ui/shared/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget with PreferredSizeWidget {
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;

  UserAppBar({
    super.key,
    this.bottom,
    this.toolbarHeight,
  }) : preferredSize =
            _PreferredAppBarSize(toolbarHeight, bottom?.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: UserProfileImage(
          imageUrl: 'https://avatars.githubusercontent.com/u/24432247?v=4',
        ),
      ),
      title: const UserGreeting(userName: 'Ahmed Olanrewaju Olayinka'),
      centerTitle: false,
      actions: const [NotificationButtonIcon()],
    );
  }

  @override
  final Size preferredSize;
}

class UserGreeting extends StatelessWidget {
  final String userName;
  const UserGreeting({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Good Morning', style: Theme.of(context).textTheme.bodySmall),
            const Image(
              image: AssetImage('assets/images/waving-hand.png'),
              height: 32,
              width: 32,
            ),
          ],
        ),
        Text(userName, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}

class UserProfileImage extends StatelessWidget {
  final String imageUrl;

  const UserProfileImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: const Key('profile-image-avatar'),
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: 32,
        width: 32,
        alignment: Alignment.center,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor, width: 1.0),
        ),
      ),
      placeholder: (context, url) =>
          LinearProgressIndicator(color: Theme.of(context).cardColor),
      errorWidget: (context, url, error) => Container(
        height: 32,
        width: 32,
        alignment: Alignment.center,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/avatar.png'),
            fit: BoxFit.contain,
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor, width: 1.0),
        ),
      ),
    );
  }
}

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
            (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}

class NotificationButtonIcon extends StatelessWidget {
  const NotificationButtonIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 48,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? kPrimaryColor10
            : kDarkModeBgColor2,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextButton(
        onPressed: () {},
        child: Stack(
          children: [
            Icon(
              Icons.notifications,
              size: 32,
              color: Theme.of(context).primaryColor,
            ),
            Positioned(
              right: 3,
              top: 5,
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 2.0),
                  ),
                  child: const Badge(smallSize: 6)),
            ),
          ],
        ),
      ),
    );
  }
}
