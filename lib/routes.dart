import 'package:Driveloop/pages/backlog_page.dart';
import 'package:Driveloop/pages/clients_page.dart';
import 'package:Driveloop/pages/customer_page.dart';
import 'package:Driveloop/pages/garage_page.dart';
import 'package:Driveloop/pages/login_page.dart';
import 'package:Driveloop/pages/owner_page.dart';
import 'package:Driveloop/pages/profile_page.dart';
import 'package:Driveloop/pages/record_page.dart';
import 'package:Driveloop/pages/requests_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRoutes = {
  'login': (context) => LoginPage(),
  'customer': (context) => CustomerPage(),
  'owner': (context) => OwnerPage(),
  'garage': (context) => GaragePage(),
  'profile': (context) => ProfilePage(),
  'records': (context) => RecordsPage(),
  'requests': (context) => RequestsPage(),
  'backlog': (context) => BacklogPage(),
  'clients': (context) => ClientsPage()
};