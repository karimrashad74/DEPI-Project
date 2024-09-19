import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:turath/core/utils/app_assets.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/core/utils/app_text_style.dart';
import 'package:turath/features/bazar/bazar_screen.dart';
import 'package:turath/features/nav-bar/navigation_bar.dart';
import 'package:turath/features/profile/profile_screen.dart';

class Category {
  final String imagePath;
  final String title;
  final Icon description;

  Category(this.imagePath, this.title, this.description);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categoryList = [
    Category(
        Assets.imagesTempleTombStructureFromAncientEgypt232151611694,
        'Civilizations',
        Icon(Icons.castle_rounded, size: 40, color: AppColors.primaryColor)),
    Category(Assets.imagesWars, 'Wars',
        Icon(Icons.shield_rounded, size: 40, color: AppColors.primaryColor)),
    Category(
        Assets.imagesViewAncientTempleTombFromAncientEgyptianTimes232151611729,
        'Figures',
        Icon(Icons.military_tech_outlined,
            size: 40, color: AppColors.primaryColor)),
    Category(
        Assets
            .images3dRenderedPhotoAncientBooksAdornLibraryCarefullyArrangedWithClassics115803023026,
        'Bazaar',
        Icon(Icons.book_rounded, size: 40, color: AppColors.primaryColor)),
  ];

  int _selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: ListTile(
              title: Text("Hello, Enjoy your day",
                  style: AppTextStyle.headLineW500S32
                      .copyWith(color: AppColors.textColorPrimary)),
              subtitle: Text("Let's Go",
                  style: AppTextStyle.headLine.copyWith(
                      color: AppColors.textColorPrimary, fontSize: 18)),
              trailing: Icon(
                Icons.notifications,
                size: 38,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: ScrollSnapList(
                itemBuilder: (context, index) => _buildListItem(context, index),
                itemCount: categoryList.length,
                itemSize: 300,
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            ),
          ),
        ],
      ),
      const ProfileScreen(), // صفحة البروفايل
      const ProfileScreen(), // صفحة البحث
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBarBottom(
        selectedIndex: _selectedIndex,
        onTabChange: changeTab,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Category category = categoryList[index];
    return InkWell(
      onTap: () {
        Widget screen;
        switch (index) {
          case 0:
            screen = const ProfileScreen(); // استبدل بالصفحة المناسبة
            break;
          case 1:
            screen = const ProfileScreen(); // استبدل بالصفحة المناسبة
            break;
          case 2:
            screen = const ProfileScreen(); // استبدل بالصفحة المناسبة
            break;
          default:
            screen = const BazarScreen();
            break;
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: SizedBox(
        width: 300,
        height: 400,
        child: Card(
          elevation: 12,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(category.imagePath),
                  fit: BoxFit.cover,
                  opacity: 0.75,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 250),
                  Text(category.title,
                      style: AppTextStyle.headLineW700S48
                          .copyWith(color: AppColors.textColorPrimary)),
                  Container(
                    child: category.description,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
