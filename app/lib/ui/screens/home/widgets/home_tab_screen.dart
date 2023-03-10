import 'package:app/ui/screens/home/home.dart';
import 'package:app/ui/shared/styles.dart';
import 'package:app/ui/shared/ui_config.dart';
import 'package:flutter/material.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              CompleteAccountSetup(
                title: 'Complete your Account setup',
                desc:
                    'Complete your account setup to enable you perform transaction on ${UIConfig.appName}',
                image: const AssetImage('assets/images/color-balls.png'),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              const WalletBalanceCard(
                walletAccountBalance: '₦295,700.00',
                userReferralLink: 'koins.primera/@ahmzyjazzy',
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Add Money',
                      iconData: Icons.add_circle,
                      iconColor: kIconGreen,
                      backgroundColor: kTextColor100,
                      sizedBoxSpace: 4,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Send Money',
                      iconData: Icons.send,
                      iconColor: kIconBlue,
                      iconTransfrom: true,
                      transformAngle: 12,
                      backgroundColor: kTextColor100,
                      sizedBoxSpace: 4,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Airtime/Data',
                      iconData: Icons.phone_iphone,
                      iconColor: Theme.of(context).primaryColor,
                      iconHasContainer: true,
                      backgroundColor: Theme.of(context).cardColor,
                      mainAxisAlignment: MainAxisAlignment.start,
                      textColor: Theme.of(context).textTheme.bodyLarge?.color,
                      sizedBoxSpace: 15,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Investments',
                      iconData: Icons.trending_up,
                      iconColor: Theme.of(context).primaryColor,
                      iconHasContainer: true,
                      backgroundColor: Theme.of(context).cardColor,
                      mainAxisAlignment: MainAxisAlignment.start,
                      textColor: Theme.of(context).textTheme.bodyLarge?.color,
                      sizedBoxSpace: 15,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Pay Bills',
                      iconData: Icons.router,
                      iconColor: Theme.of(context).primaryColor,
                      iconHasContainer: true,
                      backgroundColor: Theme.of(context).cardColor,
                      mainAxisAlignment: MainAxisAlignment.start,
                      textColor: Theme.of(context).textTheme.bodyLarge?.color,
                      sizedBoxSpace: 15,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: CustomIconTextButton(
                      buttonTextTitle: 'Loans',
                      iconData: Icons.clean_hands,
                      iconColor: Theme.of(context).primaryColor,
                      iconHasContainer: true,
                      backgroundColor: Theme.of(context).cardColor,
                      mainAxisAlignment: MainAxisAlignment.start,
                      textColor: Theme.of(context).textTheme.bodyLarge?.color,
                      sizedBoxSpace: 15,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 120,
                width: double.infinity,
                child: PromotionBanner(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
