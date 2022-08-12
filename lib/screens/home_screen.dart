import 'package:assessment/widgets/action_sheet.dart';
import 'package:assessment/widgets/actions_row.dart';
import 'package:assessment/widgets/custom_app_bar.dart';
import 'package:assessment/widgets/custom_bottom_navigation_bar.dart';
import 'package:assessment/widgets/custom_tab_bar.dart';
import 'package:assessment/widgets/lease_view.dart';
import 'package:assessment/widgets/token_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomAppBar(),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            selectedColor: Colors.black,
            color: Colors.grey,
            onActionTap: () {
              FocusScope.of(context).unfocus();
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                isScrollControlled: true,
                builder: (context) => const ActionSheet(),
              );
            },
            onTap: (index) {},
            items: [
              CustomBottomNavigationItem(
                selectedIconData: Icons.account_balance_wallet,
                unselectedIconData: Icons.account_balance_wallet_outlined,
              ),
              CustomBottomNavigationItem(
                selectedIconData: Icons.repeat_on_outlined,
                unselectedIconData: Icons.repeat,
              ),
              CustomBottomNavigationItem(
                selectedIconData: Icons.summarize,
                unselectedIconData: Icons.summarize_outlined,
              ),
              CustomBottomNavigationItem(
                selectedIconData: Icons.settings,
                unselectedIconData: Icons.settings_outlined,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Text(
                        'Mobile Team',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.unfold_more, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: ActionsRow(),
                  ),
                  const SizedBox(height: 16),
                  CustomTabBar(
                    tabController: _tabController,
                    tabs: const [
                      Tab(text: 'Tokens'),
                      Tab(text: 'Leasing'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        TokenView(),
                        LeaseView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
