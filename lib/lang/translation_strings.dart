import 'dart:async';

import 'package:delivery_app/I10n/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Translations {
  static Future<Translations> load(Locale locale) {
    final String name =
        (locale.countryCode != null && locale.countryCode.isEmpty)
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((dynamic _) {
      Intl.defaultLocale = localeName;
      return new Translations();
    });
  }

  static Translations of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  String get driver{

    return Intl.message(
        'Driver',
        name: 'driver'
    );

  }

  String get content{

    return Intl.message(
        'Content',
    name: 'content'
    );

  }

  String get signup{

    return Intl.message(
        'Signup',
        name: 'signup'
    );

  }
  String get email{

    return Intl.message(
        'Email',
        name: 'email'
    );

  }
  String get haveaccount{

    return Intl.message(
        'Haveaccount',
        name: 'haveaccount'
    );
  }
  String get havenotaccount{

    return Intl.message(
        'Havenotaccount',
        name: 'havenotaccount'
    );
  }
  String get accept{

    return Intl.message(
        'Accept',
        name: 'accept'
    );
  }
  String get term{

    return Intl.message(
        'Term',
        name: 'term'
    );
  }
  String get withgoogle{

    return Intl.message(
        'Withgoogle',
        name: 'withgoogle'
    );

  }
  String get forgot{

    return Intl.message(
        'Forget',
        name: 'forget'
    );

  }
  String get dispatch{

    return Intl.message(
        'Dispatch',
        name: 'dispatch'
    );

  }
  String get tracker{

    return Intl.message(
        'Tracker',
        name: 'tracker'
    );

  }  
  String get qrscan{

    return Intl.message(
        'Qrscan',
        name: 'qrscan'
    );

  }
  String get notification{

    return Intl.message(
        'Notification',
        name: 'notification'
    );

  }
  String get createdispatch{

    return Intl.message(
        'Createdispatch',
        name: 'createdispatch'
    );

  } String get orginfo{

    return Intl.message(
        'Orginfo',
        name: 'orginfo'
    );

  }String get orgrole{

    return Intl.message(
        'Orgrole',
        name: 'orgrole'
    );

  }
  String get website{

    return Intl.message(
        'Website',
        name: 'website'
    );

  }
  String get industry{

    return Intl.message(
        'Industry',
        name: 'industry'
    );

  }

String get origin{

    return Intl.message(
        'Origin',
        name: 'origin'
    );

  }
  String get destination{

    return Intl.message(
        'Destination',
        name: 'destination'
    );

  }
  String get dispatchdate{

    return Intl.message(
        'Dispatchdate',
        name: 'dispatchdate'
    );

  }
  String get packageref{

    return Intl.message(
        'Packageref',
        name: 'packageref'
    );

  }
  String get dispatcher{

    return Intl.message(
        'Dispatcher',
        name: 'dispatcher'
    );

  }
  String get trailertype{

    return Intl.message(
        'Trailertype',
        name: 'trailertype'
    );

  }
  String get id{

    return Intl.message(
        'Id',
        name: 'id'
    );

  }
  String get coninfo{

    return Intl.message(
        'Coninfo',
        name: 'coninfo'
    );

  }
 String get trailernumber{

    return Intl.message(
        'Trailernumber',
        name: 'trailernumber'
    );

  }
 String get commodity{

    return Intl.message(
        'Commodity',
        name: 'commodity'
    );

  }
  String get weight{

    return Intl.message(
        'Weight',
        name: 'weight'
    );

  }

  String get overview{

    return Intl.message(
        'Overview',
        name: 'overview'
    );

  } String get packages{

    return Intl.message(
        'Packages',
        name: 'packages'
    );

  } String get volumes{

    return Intl.message(
        'Volumes',
        name: 'volumes'
    );

  }
  String get save{

    return Intl.message(
        'Save',
        name: 'save'
    );

  }
  String get dirverdetail{

    return Intl.message(
        'driverdetail',
        name: 'driverdetail'
    );

  }
  String get cargo{

    return Intl.message(
        'cargo',
        name: 'cargo'
    );

  }
  String get status{

    return Intl.message(
        'Status',
        name: 'status'
    );
  }
  String get delivery{

    return Intl.message(
        'Delivery',
        name: 'delivery'
    );

  }
  String get companyname{

    return Intl.message(
        'Companyname',
        name: 'companyname'
    );

  }

  String get user{

    return Intl.message(
        'User',
        name: 'user'
    );

  }

  String get username {
    return Intl.message(
      'Username',
      name: 'username',
    );
  }

  String get not_valid_username {
    return Intl.message(
      'Not Valid Username',
      name: 'not_valid_username',
    );
  }

  String get password {
    return Intl.message(
      'password',
      name: 'password',
    );
  }

  String get password_is_too_short {
    return Intl.message(
      'password is too short',
      name: 'password_is_too_short',
    );
  }

  String get login {
    return Intl.message(
      'Login',
      name: 'login',
    );
  }

  String get language {
    return Intl.message(
      'عربي',
      name: 'language',
    );
  }

  String get links {
    return Intl.message(
      'Links',
      name: 'links',
    );
  }

  String get contacts {
    return Intl.message(
      'Contacts',
      name: 'contacts',
    );
  }

  String get attendance {
    return Intl.message(
      'Attendance',
      name: 'attendance',
    );
  }

  String get support {
    return Intl.message(
      'Support',
      name: 'support',
    );
  }

  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
    );
  }
}
