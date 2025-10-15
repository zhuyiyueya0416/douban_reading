// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Douban Reading`
  String get appName {
    return Intl.message('Douban Reading', name: 'appName', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `register`
  String get register {
    return Intl.message('register', name: 'register', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Discover`
  String get discover {
    return Intl.message('Discover', name: 'discover', desc: '', args: []);
  }

  /// `Published`
  String get published {
    return Intl.message('Published', name: 'published', desc: '', args: []);
  }

  /// `Bookshelf`
  String get bookshelf {
    return Intl.message('Bookshelf', name: 'bookshelf', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Version`
  String get version {
    return Intl.message('Version', name: 'version', desc: '', args: []);
  }

  /// `Copyright`
  String get copyright {
    return Intl.message('Copyright', name: 'copyright', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Loading`
  String get loading {
    return Intl.message('Loading', name: 'loading', desc: '', args: []);
  }

  /// `No more data`
  String get noMore {
    return Intl.message('No more data', name: 'noMore', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Welcome Back`
  String get welcome {
    return Intl.message('Welcome Back', name: 'welcome', desc: '', args: []);
  }

  /// `Please enter email`
  String get hintEmail {
    return Intl.message(
      'Please enter email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get hintPassword {
    return Intl.message(
      'Please enter password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalidEmail {
    return Intl.message(
      'Invalid email format',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get invalidPassword {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '我的页面标题', args: []);
  }

  /// `MessageCenter`
  String get messageCenter {
    return Intl.message(
      'MessageCenter',
      name: 'messageCenter',
      desc: '',
      args: [],
    );
  }

  /// `ShoppingCart`
  String get shoppingCart {
    return Intl.message(
      'ShoppingCart',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `ReadingHistory`
  String get readingHistory {
    return Intl.message(
      'ReadingHistory',
      name: 'readingHistory',
      desc: '',
      args: [],
    );
  }

  /// `FollowedAuthors`
  String get followedAuthors {
    return Intl.message(
      'FollowedAuthors',
      name: 'followedAuthors',
      desc: '',
      args: [],
    );
  }

  /// `MyPublished`
  String get myPublished {
    return Intl.message('MyPublished', name: 'myPublished', desc: '', args: []);
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `HelpCenter`
  String get helpCenter {
    return Intl.message('HelpCenter', name: 'helpCenter', desc: '', args: []);
  }

  /// `BecomeAuthor`
  String get becomeAuthor {
    return Intl.message(
      'BecomeAuthor',
      name: 'becomeAuthor',
      desc: '',
      args: [],
    );
  }

  /// `Original`
  String get original {
    return Intl.message('Original', name: 'original', desc: '原创页面标题', args: []);
  }

  /// `Featured`
  String get featured {
    return Intl.message('Featured', name: 'featured', desc: '', args: []);
  }

  /// `Romance`
  String get romance {
    return Intl.message('Romance', name: 'romance', desc: '', args: []);
  }

  /// `Mystery`
  String get mystery {
    return Intl.message('Mystery', name: 'mystery', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
