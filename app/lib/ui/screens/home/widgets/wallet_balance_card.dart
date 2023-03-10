import 'package:app/ui/shared/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class WalletBalanceCard extends StatelessWidget {
  final String walletAccountBalance;
  final String userReferralLink;

  const WalletBalanceCard({
    super.key,
    required this.walletAccountBalance,
    required this.userReferralLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor80,
        image: const DecorationImage(
          image: AssetImage('assets/images/koins-transparent.png'),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
            color: Theme.of(context).scaffoldBackgroundColor, width: 2.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Balance',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: kDarkModeTextColor,
                          ),
                    ),
                    Text(
                      walletAccountBalance,
                      style: kCurrencyText,
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('hide/show balance');
                    }
                  },
                  icon: const Icon(
                    IconlyBold.hide,
                    color: kDarkModeTextColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            height: 38,
            width: double.infinity,
            color: Theme.of(context).brightness == Brightness.light
                ? kDarkModeBgColor2.withOpacity(0.4)
                : kDarkModeBgColor2.withOpacity(0.6),
            child: Text(
              userReferralLink,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: kDarkModeTextColor,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
