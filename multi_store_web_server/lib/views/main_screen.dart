import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_web_server/views/side_screens/categories_screen.dart';
import 'package:multi_store_web_server/views/side_screens/dashboard_screen.dart';
import 'package:multi_store_web_server/views/side_screens/upload_banner_screen.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget _selectedScreen = DashboardScreen();

  screenSelector(item){
    switch(item.route){
      case DashboardScreen.screenRoute:
        setState(() {
          _selectedScreen = DashboardScreen();
        });
        break;

      case UploadBannerScreen.screenRoute:
        setState(() {
          _selectedScreen = UploadBannerScreen();
        });
        break;

      case CategoryScreen.screenRoute:
      setState(() {
      _selectedScreen = CategoryScreen();
      });
      break;

      case UploadBannerScreen.screenRoute:
      setState(() {
      _selectedScreen = UploadBannerScreen();
      });
      break;

      case UploadBannerScreen.screenRoute:
      setState(() {
      _selectedScreen = UploadBannerScreen();
      });
      break;

      case UploadBannerScreen.screenRoute:
      setState(() {
      _selectedScreen = UploadBannerScreen();
      });
      break;

      case UploadBannerScreen.screenRoute:
      setState(() {
      _selectedScreen = UploadBannerScreen();
      });
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sample'),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Vendor',
            route: '/',
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            route: '/',
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Orders',
            route: '/',
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Categories',
            route: CategoryScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Products',
            route: '/',
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            route: UploadBannerScreen.screenRoute,
            icon: Icons.dashboard,
          ),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedScreen
    );
  }
}
