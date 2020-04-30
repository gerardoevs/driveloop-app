import 'package:flutter/material.dart';
import 'package:Driveloop/pages/clients_page.dart';
import 'package:Driveloop/pages/customer_page.dart';
import 'package:Driveloop/pages/garage_page.dart';
import 'package:Driveloop/pages/login_page.dart';
import 'package:Driveloop/pages/owner_page.dart';
import 'package:Driveloop/pages/profile_page.dart';
import 'package:Driveloop/pages/received_page.dart';
import 'package:Driveloop/pages/record_page.dart';
import 'package:Driveloop/pages/requests_page.dart';
import 'package:Driveloop/pages/car_info_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  'login'   : (context) => LoginPage(),
  'customer': (context) => CustomerPage(),
  'owner'   : (context) => OwnerPage(),
  'garage'  : (context) => GaragePage(),
  'profile' : (context) => ProfilePage(),
  'records' : (context) => RecordsPage(),
  'requests': (context) => RequestsPage(),
  'received': (context) => ReceivedPage(),
  'clients' : (context) => ClientsPage(),
  'carinfo' : (context) => CarInfoPage(),
};