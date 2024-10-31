import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Find the Perfect Gift,\nEvery Time'**
  String get welcome;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'To the easiest ways to bring others joy'**
  String get tagline;

  /// No description provided for @phone_number_label.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number_label;

  /// No description provided for @google_sign_label.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get google_sign_label;

  /// No description provided for @apple_sign_label.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get apple_sign_label;

  /// No description provided for @whatsapp_sign_label.
  ///
  /// In en, this message translates to:
  /// **'Sign in with WhatsApp'**
  String get whatsapp_sign_label;

  /// No description provided for @facebook_sign_label.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Facebook'**
  String get facebook_sign_label;

  /// No description provided for @greet_morning_label.
  ///
  /// In en, this message translates to:
  /// **'Good morning {name} 👋'**
  String greet_morning_label(String name);

  /// No description provided for @greet_afternoon_label.
  ///
  /// In en, this message translates to:
  /// **'Good afternoon {name} 👋'**
  String greet_afternoon_label(String name);

  /// No description provided for @greet_evening_label.
  ///
  /// In en, this message translates to:
  /// **'Good evening {name} 👋'**
  String greet_evening_label(String name);

  /// No description provided for @language_label.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language_label;

  /// No description provided for @setting_label.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get setting_label;

  /// No description provided for @navbar_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navbar_home;

  /// No description provided for @navbar_categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get navbar_categories;

  /// No description provided for @navbar_calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get navbar_calendar;

  /// No description provided for @navbar_activities.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get navbar_activities;

  /// No description provided for @navbar_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navbar_profile;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @select_religion.
  ///
  /// In en, this message translates to:
  /// **'Select Religion'**
  String get select_religion;

  /// No description provided for @interest.
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get interest;

  /// No description provided for @save_profile.
  ///
  /// In en, this message translates to:
  /// **'Save Profile'**
  String get save_profile;

  /// No description provided for @incomplete_data.
  ///
  /// In en, this message translates to:
  /// **'Incomplete data. '**
  String get incomplete_data;

  /// No description provided for @fill_all_data.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields and try again.'**
  String get fill_all_data;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @data_updated.
  ///
  /// In en, this message translates to:
  /// **'Data updated successfully'**
  String get data_updated;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @place_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Place of Birth'**
  String get place_of_birth;

  /// No description provided for @date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get date_of_birth;

  /// No description provided for @full_address.
  ///
  /// In en, this message translates to:
  /// **'Full address'**
  String get full_address;

  /// No description provided for @postal_code.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postal_code;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @contact_saved.
  ///
  /// In en, this message translates to:
  /// **'Contact saved successfully.'**
  String get contact_saved;

  /// No description provided for @edit_contact.
  ///
  /// In en, this message translates to:
  /// **'Edit Contact'**
  String get edit_contact;

  /// No description provided for @fill_identity.
  ///
  /// In en, this message translates to:
  /// **'Fill Identity'**
  String get fill_identity;

  /// No description provided for @fill_your_identity.
  ///
  /// In en, this message translates to:
  /// **'Complete Your Identity'**
  String get fill_your_identity;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @contacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contacts;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @cards_payment.
  ///
  /// In en, this message translates to:
  /// **'Cards and Payment'**
  String get cards_payment;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Condition'**
  String get terms_conditions;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @help_support.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get help_support;

  /// No description provided for @get_help.
  ///
  /// In en, this message translates to:
  /// **'Get Help'**
  String get get_help;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get delete_account;

  /// No description provided for @what_can_i_do.
  ///
  /// In en, this message translates to:
  /// **'Let\"s send a gift'**
  String get what_can_i_do;

  /// No description provided for @upcoming_event.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Events'**
  String get upcoming_event;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get see_all;

  /// No description provided for @gift_someone_label.
  ///
  /// In en, this message translates to:
  /// **'I want to gift someone'**
  String get gift_someone_label;

  /// No description provided for @gift_myself_label.
  ///
  /// In en, this message translates to:
  /// **'I want to gift myself'**
  String get gift_myself_label;

  /// No description provided for @how_may_assist_label.
  ///
  /// In en, this message translates to:
  /// **'How may I assist you today?'**
  String get how_may_assist_label;

  /// No description provided for @welcome_back_label.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcome_back_label;

  /// No description provided for @what_occasion_narration_label.
  ///
  /// In en, this message translates to:
  /// **'Sure, What\'\'s the occasion you want to celebrate with them?'**
  String get what_occasion_narration_label;

  /// No description provided for @some_occasion_label.
  ///
  /// In en, this message translates to:
  /// **'Here some occasion for you:'**
  String get some_occasion_label;

  /// No description provided for @lets_find_contact_label.
  ///
  /// In en, this message translates to:
  /// **'Great! Let\'\'s find a contact to send the gift.'**
  String get lets_find_contact_label;

  /// No description provided for @find_recipient_label.
  ///
  /// In en, this message translates to:
  /// **'Find the recipient you \nwant to send'**
  String get find_recipient_label;

  /// No description provided for @my_recommendation_product_label.
  ///
  /// In en, this message translates to:
  /// **'Here are my recommendations products for celebrating {event_name}'**
  String my_recommendation_product_label(String event_name);

  /// No description provided for @has_calculated_shipping_narration_label.
  ///
  /// In en, this message translates to:
  /// **'I have calculated your shipping cost, please review it before confirming your order.'**
  String get has_calculated_shipping_narration_label;

  /// No description provided for @another_product_label.
  ///
  /// In en, this message translates to:
  /// **'Another Product'**
  String get another_product_label;

  /// No description provided for @total_recipient.
  ///
  /// In en, this message translates to:
  /// **'Total Recipient'**
  String get total_recipient;

  /// No description provided for @add_gifting_card_label.
  ///
  /// In en, this message translates to:
  /// **'Want to add Gifting card?'**
  String get add_gifting_card_label;

  /// No description provided for @choose_payment_method_narration_label.
  ///
  /// In en, this message translates to:
  /// **'Before I calculate your total cost, please choose your payment method first.'**
  String get choose_payment_method_narration_label;

  /// No description provided for @payment_code.
  ///
  /// In en, this message translates to:
  /// **'Payment Code'**
  String get payment_code;

  /// No description provided for @payment_deadline.
  ///
  /// In en, this message translates to:
  /// **'Payment Deadline'**
  String get payment_deadline;

  /// No description provided for @payment_expires_in.
  ///
  /// In en, this message translates to:
  /// **'Pay within {counter} before the\n Virtual Account No. expired'**
  String payment_expires_in(String counter);

  /// No description provided for @account_number.
  ///
  /// In en, this message translates to:
  /// **'Virtual Account Number'**
  String get account_number;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @how_to_payment.
  ///
  /// In en, this message translates to:
  /// **'How to make payment'**
  String get how_to_payment;

  /// No description provided for @check_purchase_history.
  ///
  /// In en, this message translates to:
  /// **'Check your purchase history'**
  String get check_purchase_history;

  /// No description provided for @copied_to_clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copied_to_clipboard;

  /// No description provided for @bank_payment_instructions.
  ///
  /// In en, this message translates to:
  /// **'Bank Payment Instructions'**
  String get bank_payment_instructions;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @edit_address.
  ///
  /// In en, this message translates to:
  /// **'Edit Address'**
  String get edit_address;

  /// No description provided for @see_detail.
  ///
  /// In en, this message translates to:
  /// **'See Detail'**
  String get see_detail;

  /// No description provided for @stock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// No description provided for @description_product.
  ///
  /// In en, this message translates to:
  /// **'Product Description'**
  String get description_product;

  /// No description provided for @customer_review.
  ///
  /// In en, this message translates to:
  /// **'Customer Review'**
  String get customer_review;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @continue_buy.
  ///
  /// In en, this message translates to:
  /// **'Continue to Buy'**
  String get continue_buy;

  /// No description provided for @search_contact.
  ///
  /// In en, this message translates to:
  /// **'Search contacts'**
  String get search_contact;

  /// No description provided for @contact_not_found_create.
  ///
  /// In en, this message translates to:
  /// **'Contact not found. Would you like to create a new contact?'**
  String get contact_not_found_create;

  /// No description provided for @create_new_contact.
  ///
  /// In en, this message translates to:
  /// **'Create New Contact'**
  String get create_new_contact;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @days_ago.
  ///
  /// In en, this message translates to:
  /// **'{days} days ago'**
  String days_ago(String days);

  /// No description provided for @in_days.
  ///
  /// In en, this message translates to:
  /// **'in {days} days'**
  String in_days(String days);

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @total_order_cost.
  ///
  /// In en, this message translates to:
  /// **'Total Order Cost'**
  String get total_order_cost;

  /// No description provided for @platform_fee.
  ///
  /// In en, this message translates to:
  /// **'Platform Fee'**
  String get platform_fee;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get total_price;

  /// No description provided for @gifting_card.
  ///
  /// In en, this message translates to:
  /// **'Gifting Card'**
  String get gifting_card;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get free;

  /// No description provided for @proceed_payment.
  ///
  /// In en, this message translates to:
  /// **'Proceed Payment'**
  String get proceed_payment;

  /// No description provided for @your_place_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Your place of birth'**
  String get your_place_of_birth;

  /// No description provided for @full_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Full address with house/apartment numbers'**
  String get full_address_hint;

  /// No description provided for @your_postal_code.
  ///
  /// In en, this message translates to:
  /// **'Your postal code'**
  String get your_postal_code;

  /// No description provided for @notes_label.
  ///
  /// In en, this message translates to:
  /// **'e.g: building no, house color, etc'**
  String get notes_label;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @shipping_from.
  ///
  /// In en, this message translates to:
  /// **'Shipping from '**
  String get shipping_from;

  /// No description provided for @product_left.
  ///
  /// In en, this message translates to:
  /// **' left'**
  String get product_left;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @i_want_this.
  ///
  /// In en, this message translates to:
  /// **'I want this'**
  String get i_want_this;

  /// No description provided for @gifting_card_message_hint.
  ///
  /// In en, this message translates to:
  /// **'Wishing you all the happiness someone as nice as you deserves.'**
  String get gifting_card_message_hint;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @gifting_card_narrator_label.
  ///
  /// In en, this message translates to:
  /// **'Add color to your gifts with our gift cards. Choose your design now.'**
  String get gifting_card_narrator_label;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @create_contact.
  ///
  /// In en, this message translates to:
  /// **'Create Contact'**
  String get create_contact;

  /// No description provided for @empty_contact_label.
  ///
  /// In en, this message translates to:
  /// **'You haven\'\'t add any contact yet.'**
  String get empty_contact_label;

  /// No description provided for @empty_contact_description.
  ///
  /// In en, this message translates to:
  /// **'Add contact to sent a gift'**
  String get empty_contact_description;

  /// No description provided for @empty_chat_description.
  ///
  /// In en, this message translates to:
  /// **'You haven\'\'t had a conversation\n with the gift merchant yet'**
  String get empty_chat_description;

  /// No description provided for @import_contact_label.
  ///
  /// In en, this message translates to:
  /// **'Import Phone Contact'**
  String get import_contact_label;

  /// No description provided for @track_package.
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get track_package;

  /// No description provided for @track_your_package.
  ///
  /// In en, this message translates to:
  /// **'Track your package'**
  String get track_your_package;

  /// No description provided for @enter_track_package_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your tracking number'**
  String get enter_track_package_hint;

  /// No description provided for @transaction_fee.
  ///
  /// In en, this message translates to:
  /// **'Transaction Fee'**
  String get transaction_fee;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @login_greet.
  ///
  /// In en, this message translates to:
  /// **'I\'\'m Dewi, your virtual AI assistant'**
  String get login_greet;

  /// No description provided for @select_preferred_lang.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred\nlanguage'**
  String get select_preferred_lang;

  /// No description provided for @select_prefered_lang_label.
  ///
  /// In en, this message translates to:
  /// **'You will use the same language throughout the app'**
  String get select_prefered_lang_label;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @onprocess.
  ///
  /// In en, this message translates to:
  /// **'On Process'**
  String get onprocess;

  /// No description provided for @shipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get shipped;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @send_whatsapp_label.
  ///
  /// In en, this message translates to:
  /// **'Send WhatsApp'**
  String get send_whatsapp_label;

  /// No description provided for @whatsapp_message_notify_template.
  ///
  /// In en, this message translates to:
  /// **'Hi {name},\n\nGood news! I have a special gift for you and you can track its delivery status on the Untukmu App.\n\nTo track your delivery, please click this link: {trackingdeeplink}.\n\nAlternatively, you can also copy the airway bill number {trackingnumber} and paste it on track item section on homepage.\n\nIf you haven\'\'t downloaded the app yet, you can find it on the Playstore on this link below\nhttps://untukmu.ai/download\n\nEnjoy your gift!'**
  String whatsapp_message_notify_template(
      String name, String trackingdeeplink, String trackingnumber);

  /// No description provided for @share_info_friend_label.
  ///
  /// In en, this message translates to:
  /// **'Share with your contact'**
  String get share_info_friend_label;

  /// No description provided for @see_trx_detail_label.
  ///
  /// In en, this message translates to:
  /// **'View Transaction Details'**
  String get see_trx_detail_label;

  /// No description provided for @order_status.
  ///
  /// In en, this message translates to:
  /// **'Order Status'**
  String get order_status;

  /// No description provided for @info_shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping Information'**
  String get info_shipping;

  /// No description provided for @download_invoice.
  ///
  /// In en, this message translates to:
  /// **'Download Invoice'**
  String get download_invoice;

  /// No description provided for @detail_transaction_title.
  ///
  /// In en, this message translates to:
  /// **'Detail Transaction'**
  String get detail_transaction_title;

  /// No description provided for @id_transaction.
  ///
  /// In en, this message translates to:
  /// **'ID Transaction'**
  String get id_transaction;

  /// No description provided for @order_date.
  ///
  /// In en, this message translates to:
  /// **'Order Date'**
  String get order_date;

  /// No description provided for @total_product_price.
  ///
  /// In en, this message translates to:
  /// **'Total Item Price'**
  String get total_product_price;

  /// No description provided for @gifting_to_recipient.
  ///
  /// In en, this message translates to:
  /// **'Gifting to: {total} Recipient'**
  String gifting_to_recipient(String total);

  /// No description provided for @order_history.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get order_history;

  /// No description provided for @total_shipping.
  ///
  /// In en, this message translates to:
  /// **'Total Shipping'**
  String get total_shipping;

  /// No description provided for @payment_details.
  ///
  /// In en, this message translates to:
  /// **'Payment Details'**
  String get payment_details;

  /// No description provided for @empty_order_label.
  ///
  /// In en, this message translates to:
  /// **'No Order Yet'**
  String get empty_order_label;

  /// No description provided for @empty_order_description.
  ///
  /// In en, this message translates to:
  /// **'You haven\'\'t placed any orders yet. When you do, they\'\'ll appear here'**
  String get empty_order_description;

  /// No description provided for @no_internet_label.
  ///
  /// In en, this message translates to:
  /// **'Unable to Connect to the Internet'**
  String get no_internet_label;

  /// No description provided for @no_internet_desc.
  ///
  /// In en, this message translates to:
  /// **'We\'\'re sorry, it seems like we\'\'re having trouble connecting to the internet. Please check your internet connection and try again.'**
  String get no_internet_desc;

  /// No description provided for @discover_title_1.
  ///
  /// In en, this message translates to:
  /// **'Create lasting memory by picking the perfect occasion.'**
  String get discover_title_1;

  /// No description provided for @discover_subtitle_1.
  ///
  /// In en, this message translates to:
  /// **'Swipe to continue'**
  String get discover_subtitle_1;

  /// No description provided for @discover_title_2.
  ///
  /// In en, this message translates to:
  /// **'Add a Personal Touch and Make Your Gift One-of-a-Kind.'**
  String get discover_title_2;

  /// No description provided for @discover_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'Swipe to continue'**
  String get discover_subtitle_2;

  /// No description provided for @discover_title_3.
  ///
  /// In en, this message translates to:
  /// **'Create lasting memory by picking the perfect occasion.'**
  String get discover_title_3;

  /// No description provided for @discover_subtitle_3.
  ///
  /// In en, this message translates to:
  /// **'Swipe to continue'**
  String get discover_subtitle_3;

  /// No description provided for @no_address_title.
  ///
  /// In en, this message translates to:
  /// **'You haven\'\'t put any address'**
  String get no_address_title;

  /// No description provided for @no_address_desc.
  ///
  /// In en, this message translates to:
  /// **'Add your address for shipping'**
  String get no_address_desc;

  /// No description provided for @detail_product_title.
  ///
  /// In en, this message translates to:
  /// **'Product Description'**
  String get detail_product_title;

  /// No description provided for @courier.
  ///
  /// In en, this message translates to:
  /// **'Courier'**
  String get courier;

  /// No description provided for @tracking_number.
  ///
  /// In en, this message translates to:
  /// **'Tracking Number'**
  String get tracking_number;

  /// No description provided for @delete_contact.
  ///
  /// In en, this message translates to:
  /// **'Delete Contact'**
  String get delete_contact;

  /// No description provided for @delete_contact_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Delete This Contact?'**
  String get delete_contact_confirmation;

  /// No description provided for @delete_contact_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to delete this contact?'**
  String get delete_contact_confirmation_desc;

  /// No description provided for @no_answer.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no_answer;

  /// No description provided for @yes_answer.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes_answer;

  /// No description provided for @contact_deleted.
  ///
  /// In en, this message translates to:
  /// **'Contact Deleted'**
  String get contact_deleted;

  /// No description provided for @write_review.
  ///
  /// In en, this message translates to:
  /// **'Write a Review'**
  String get write_review;

  /// No description provided for @give_feedback_label.
  ///
  /// In en, this message translates to:
  /// **'Give your feedback'**
  String get give_feedback_label;

  /// No description provided for @feedback_input_hint.
  ///
  /// In en, this message translates to:
  /// **'What did you like about it? What could we improve? We\'\'re all ears'**
  String get feedback_input_hint;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @success_review_title.
  ///
  /// In en, this message translates to:
  /// **'Thank You for Your Review'**
  String get success_review_title;

  /// No description provided for @success_review_desc.
  ///
  /// In en, this message translates to:
  /// **'We appreciate your review! Your feedback helps us improve and other shoppers make better decisions.'**
  String get success_review_desc;

  /// No description provided for @continue_shopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continue_shopping;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @payment_method_selected.
  ///
  /// In en, this message translates to:
  /// **'Payment Method Selected'**
  String get payment_method_selected;

  /// No description provided for @delete_account_label.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get delete_account_label;

  /// No description provided for @delete_account_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Delete account confirmation'**
  String get delete_account_confirmation;

  /// No description provided for @delete_account_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? This action is permanent and cannot be undone.'**
  String get delete_account_confirmation_desc;

  /// No description provided for @delete_account_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get delete_account_confirmed;

  /// No description provided for @delete_account_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get delete_account_cancel;

  /// No description provided for @delete_account_success_title.
  ///
  /// In en, this message translates to:
  /// **'Account Deleted'**
  String get delete_account_success_title;

  /// No description provided for @delete_account_success_desc.
  ///
  /// In en, this message translates to:
  /// **'Your Account deleted successfully'**
  String get delete_account_success_desc;

  /// No description provided for @purchase_label.
  ///
  /// In en, this message translates to:
  /// **'Bayar'**
  String get purchase_label;

  /// No description provided for @give_rating_label.
  ///
  /// In en, this message translates to:
  /// **'Give a rating'**
  String get give_rating_label;

  /// No description provided for @sold.
  ///
  /// In en, this message translates to:
  /// **'Sold'**
  String get sold;

  /// No description provided for @no_rating.
  ///
  /// In en, this message translates to:
  /// **'No rating'**
  String get no_rating;

  /// No description provided for @pick_location_title.
  ///
  /// In en, this message translates to:
  /// **'Pick a Location'**
  String get pick_location_title;

  /// No description provided for @show_map_title.
  ///
  /// In en, this message translates to:
  /// **'Menampilkan Peta'**
  String get show_map_title;

  /// No description provided for @select_location_label.
  ///
  /// In en, this message translates to:
  /// **'Select Location'**
  String get select_location_label;

  /// No description provided for @search_for_address.
  ///
  /// In en, this message translates to:
  /// **'Search for Address'**
  String get search_for_address;

  /// No description provided for @search_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter the district / city name'**
  String get search_address_hint;

  /// No description provided for @zipcode.
  ///
  /// In en, this message translates to:
  /// **'Zip code'**
  String get zipcode;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @error_not_fill_name.
  ///
  /// In en, this message translates to:
  /// **'Please fill name data'**
  String get error_not_fill_name;

  /// No description provided for @error_not_fill_phone.
  ///
  /// In en, this message translates to:
  /// **'Please fill phone number data'**
  String get error_not_fill_phone;

  /// No description provided for @error_not_fill_address.
  ///
  /// In en, this message translates to:
  /// **'Please fill address data'**
  String get error_not_fill_address;

  /// No description provided for @save_address.
  ///
  /// In en, this message translates to:
  /// **'Save Address'**
  String get save_address;

  /// No description provided for @added.
  ///
  /// In en, this message translates to:
  /// **'Added'**
  String get added;

  /// No description provided for @edited.
  ///
  /// In en, this message translates to:
  /// **'edited'**
  String get edited;

  /// No description provided for @use_current_location.
  ///
  /// In en, this message translates to:
  /// **'Use current location'**
  String get use_current_location;

  /// No description provided for @no_available_product_title.
  ///
  /// In en, this message translates to:
  /// **'No Available Product'**
  String get no_available_product_title;

  /// No description provided for @no_available_product_desc.
  ///
  /// In en, this message translates to:
  /// **'There are no available products for this event'**
  String get no_available_product_desc;

  /// No description provided for @no_available_product_price_desc.
  ///
  /// In en, this message translates to:
  /// **'There are no available products on this price range'**
  String get no_available_product_price_desc;

  /// No description provided for @no_available_data_title.
  ///
  /// In en, this message translates to:
  /// **'No Available Data'**
  String get no_available_data_title;

  /// No description provided for @no_available_data_desc.
  ///
  /// In en, this message translates to:
  /// **'There is no data available for this transaction'**
  String get no_available_data_desc;

  /// No description provided for @no_notification_data_title.
  ///
  /// In en, this message translates to:
  /// **'No Notification Yet'**
  String get no_notification_data_title;

  /// No description provided for @no_notification_data_desc.
  ///
  /// In en, this message translates to:
  /// **'Start shopping and discover new products from our sellers today'**
  String get no_notification_data_desc;

  /// No description provided for @already_added.
  ///
  /// In en, this message translates to:
  /// **'Already Added'**
  String get already_added;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @no_review_yet.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet for this product'**
  String get no_review_yet;

  /// No description provided for @be_first_review.
  ///
  /// In en, this message translates to:
  /// **'Be the first to leave a review and help others choose the right product!'**
  String get be_first_review;

  /// No description provided for @max_recipient_reached.
  ///
  /// In en, this message translates to:
  /// **'maximum recipient reached!'**
  String get max_recipient_reached;

  /// No description provided for @error_not_fill_zipcode.
  ///
  /// In en, this message translates to:
  /// **'Please fill postal code'**
  String get error_not_fill_zipcode;

  /// No description provided for @set_address_main.
  ///
  /// In en, this message translates to:
  /// **'Set as Main'**
  String get set_address_main;

  /// No description provided for @tracking_number_not_available.
  ///
  /// In en, this message translates to:
  /// **'Tracking number not available'**
  String get tracking_number_not_available;

  /// No description provided for @product_price.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get product_price;

  /// No description provided for @shipping_cost.
  ///
  /// In en, this message translates to:
  /// **'Shipping Costs'**
  String get shipping_cost;

  /// No description provided for @estimated_arrival.
  ///
  /// In en, this message translates to:
  /// **'Estimated Arrival'**
  String get estimated_arrival;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @onboarding_title_1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Untukmu\nGifting AI'**
  String get onboarding_title_1;

  /// No description provided for @onboarding_subtitle_1.
  ///
  /// In en, this message translates to:
  /// **'With Untukmu, gifting has never been easier. We\'\'re here to help you make each occasion special, without the stress of finding the perfect gift.'**
  String get onboarding_subtitle_1;

  /// No description provided for @onboarding_title_2.
  ///
  /// In en, this message translates to:
  /// **'Sync Your Calendar'**
  String get onboarding_title_2;

  /// No description provided for @onboarding_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'Let us help you stay on top of important dates! Sync your online calendar with Untukmu so we can remind you of upcoming events and make personalized gift recommendations.'**
  String get onboarding_subtitle_2;

  /// No description provided for @onboarding_title_3.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Gift'**
  String get onboarding_title_3;

  /// No description provided for @onboarding_subtitle_3.
  ///
  /// In en, this message translates to:
  /// **'Our AI-powered Gift Catalogue has something for everyone. Simply choose the occasion and let us handle the rest. With Untukmu, you\'\'ll always give the perfect gift.'**
  String get onboarding_subtitle_3;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @event_calendar.
  ///
  /// In en, this message translates to:
  /// **'Event Calendar'**
  String get event_calendar;

  /// No description provided for @no_event_running.
  ///
  /// In en, this message translates to:
  /// **'No event running'**
  String get no_event_running;

  /// No description provided for @add_address.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get add_address;

  /// No description provided for @cant_find_contact_name_label.
  ///
  /// In en, this message translates to:
  /// **'We can’t find that name'**
  String get cant_find_contact_name_label;

  /// No description provided for @cant_find_contact_name_desc.
  ///
  /// In en, this message translates to:
  /// **'you can add more contact or find another name'**
  String get cant_find_contact_name_desc;

  /// No description provided for @no_birthday_filled.
  ///
  /// In en, this message translates to:
  /// **'No birthday filled'**
  String get no_birthday_filled;

  /// No description provided for @contact_imported.
  ///
  /// In en, this message translates to:
  /// **'Contact Imported'**
  String get contact_imported;

  /// No description provided for @card_payment_title.
  ///
  /// In en, this message translates to:
  /// **'Cards & Payment'**
  String get card_payment_title;

  /// No description provided for @preferred_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Your preferred payment method'**
  String get preferred_payment_method;

  /// No description provided for @add_credit_card.
  ///
  /// In en, this message translates to:
  /// **'Add Credit Card'**
  String get add_credit_card;

  /// No description provided for @payment_card_added.
  ///
  /// In en, this message translates to:
  /// **'Payment Card Added'**
  String get payment_card_added;

  /// No description provided for @payment_card_deleted.
  ///
  /// In en, this message translates to:
  /// **'Payment Card Deleted'**
  String get payment_card_deleted;

  /// No description provided for @upload_photo.
  ///
  /// In en, this message translates to:
  /// **'Upload Photo'**
  String get upload_photo;

  /// No description provided for @select_photo.
  ///
  /// In en, this message translates to:
  /// **'Select a photo'**
  String get select_photo;

  /// No description provided for @capture_camera.
  ///
  /// In en, this message translates to:
  /// **'Capture Camera'**
  String get capture_camera;

  /// No description provided for @pick_from_gallery.
  ///
  /// In en, this message translates to:
  /// **'Pick From Gallery'**
  String get pick_from_gallery;

  /// No description provided for @what_are_they_interested.
  ///
  /// In en, this message translates to:
  /// **'What are they interested in?'**
  String get what_are_they_interested;

  /// No description provided for @import_contact.
  ///
  /// In en, this message translates to:
  /// **'Import Contact'**
  String get import_contact;

  /// No description provided for @phone_contacts.
  ///
  /// In en, this message translates to:
  /// **'Phone Contacts'**
  String get phone_contacts;

  /// No description provided for @select_all.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get select_all;

  /// No description provided for @unselect_all.
  ///
  /// In en, this message translates to:
  /// **'Unselect All'**
  String get unselect_all;

  /// No description provided for @cant_find_name.
  ///
  /// In en, this message translates to:
  /// **'We can’t find that name'**
  String get cant_find_name;

  /// No description provided for @cant_add_more.
  ///
  /// In en, this message translates to:
  /// **'you can add more contact or find another name'**
  String get cant_add_more;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @quick_access.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get quick_access;

  /// No description provided for @recommendation.
  ///
  /// In en, this message translates to:
  /// **'Recommendation'**
  String get recommendation;

  /// No description provided for @server_error_title.
  ///
  /// In en, this message translates to:
  /// **'Server Error 🚧'**
  String get server_error_title;

  /// No description provided for @server_error_desc.
  ///
  /// In en, this message translates to:
  /// **'There is an issue with the server, please try again in a few moments.'**
  String get server_error_desc;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @remove_address.
  ///
  /// In en, this message translates to:
  /// **'Remove Address'**
  String get remove_address;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'Main'**
  String get main;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @delete_address_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Delete Address?'**
  String get delete_address_confirmation;

  /// No description provided for @delete_address_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this address?'**
  String get delete_address_confirmation_desc;

  /// No description provided for @delete_address_success.
  ///
  /// In en, this message translates to:
  /// **'Address Deleted'**
  String get delete_address_success;

  /// No description provided for @delete_address_success_desc.
  ///
  /// In en, this message translates to:
  /// **'Address Deleted Successfully'**
  String get delete_address_success_desc;

  /// No description provided for @pick_location_guide.
  ///
  /// In en, this message translates to:
  /// **'click on the map to determine the location point'**
  String get pick_location_guide;

  /// No description provided for @coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get coming_soon;

  /// No description provided for @add_contact.
  ///
  /// In en, this message translates to:
  /// **'Add Contact'**
  String get add_contact;

  /// No description provided for @import_phone_contact.
  ///
  /// In en, this message translates to:
  /// **'Import Phone Contact'**
  String get import_phone_contact;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @update_profile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get update_profile;

  /// No description provided for @change_photo.
  ///
  /// In en, this message translates to:
  /// **'Change Photo'**
  String get change_photo;

  /// No description provided for @how_can_we_help.
  ///
  /// In en, this message translates to:
  /// **'How can we\nhelp you?'**
  String get how_can_we_help;

  /// No description provided for @start_conversation.
  ///
  /// In en, this message translates to:
  /// **'Start Conversation'**
  String get start_conversation;

  /// No description provided for @data_not_available.
  ///
  /// In en, this message translates to:
  /// **'Data not available'**
  String get data_not_available;

  /// No description provided for @add_event.
  ///
  /// In en, this message translates to:
  /// **'Add Event'**
  String get add_event;

  /// No description provided for @edit_event.
  ///
  /// In en, this message translates to:
  /// **'Edit Event'**
  String get edit_event;

  /// No description provided for @event_type.
  ///
  /// In en, this message translates to:
  /// **'Event Type'**
  String get event_type;

  /// No description provided for @event_title.
  ///
  /// In en, this message translates to:
  /// **'Event Title'**
  String get event_title;

  /// No description provided for @input_event_title.
  ///
  /// In en, this message translates to:
  /// **'Input Event Title'**
  String get input_event_title;

  /// No description provided for @for_who.
  ///
  /// In en, this message translates to:
  /// **'For Who? '**
  String get for_who;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @input_event_recipient.
  ///
  /// In en, this message translates to:
  /// **'Input the event\'\'s recipient'**
  String get input_event_recipient;

  /// No description provided for @date_of_event.
  ///
  /// In en, this message translates to:
  /// **'Date of Event'**
  String get date_of_event;

  /// No description provided for @input_date_of_event.
  ///
  /// In en, this message translates to:
  /// **'Input date of event'**
  String get input_date_of_event;

  /// No description provided for @input_notes.
  ///
  /// In en, this message translates to:
  /// **'Add a note'**
  String get input_notes;

  /// No description provided for @event_added.
  ///
  /// In en, this message translates to:
  /// **'Event added'**
  String get event_added;

  /// No description provided for @event_edited.
  ///
  /// In en, this message translates to:
  /// **'Event edited'**
  String get event_edited;

  /// No description provided for @event_deleted.
  ///
  /// In en, this message translates to:
  /// **'Event deleted'**
  String get event_deleted;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @finish_order_title.
  ///
  /// In en, this message translates to:
  /// **'Finish Order'**
  String get finish_order_title;

  /// No description provided for @finish_order_desc.
  ///
  /// In en, this message translates to:
  /// **'By clicking Done, the funds will be transferred to the seller and you will not be able to file a complaint.'**
  String get finish_order_desc;

  /// No description provided for @delete_event.
  ///
  /// In en, this message translates to:
  /// **'Delete Event'**
  String get delete_event;

  /// No description provided for @delete_event_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Delete This Event?'**
  String get delete_event_confirmation;

  /// No description provided for @delete_event_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to delete this event?'**
  String get delete_event_confirmation_desc;

  /// No description provided for @select_type.
  ///
  /// In en, this message translates to:
  /// **'Select Type'**
  String get select_type;

  /// No description provided for @select_address_type.
  ///
  /// In en, this message translates to:
  /// **'Select Address Type'**
  String get select_address_type;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @chat_merchant_suggestion_1.
  ///
  /// In en, this message translates to:
  /// **'Hi, is this gift product still available?'**
  String get chat_merchant_suggestion_1;

  /// No description provided for @chat_merchant_suggestion_2.
  ///
  /// In en, this message translates to:
  /// **'Hi, is this product ready?'**
  String get chat_merchant_suggestion_2;

  /// No description provided for @chat_merchant_suggestion_3.
  ///
  /// In en, this message translates to:
  /// **'When can it be shipped?'**
  String get chat_merchant_suggestion_3;

  /// No description provided for @whatsapp_message_confirm_template.
  ///
  /// In en, this message translates to:
  /// **'Hi {name},\n\nHave you already receive gift from me? please confirm'**
  String whatsapp_message_confirm_template(String name);

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @transaction_status_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get transaction_status_all;

  /// No description provided for @transaction_status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get transaction_status_pending;

  /// No description provided for @transaction_status_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get transaction_status_paid;

  /// No description provided for @transaction_status_on_processed.
  ///
  /// In en, this message translates to:
  /// **'On Process'**
  String get transaction_status_on_processed;

  /// No description provided for @transaction_status_shipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get transaction_status_shipped;

  /// No description provided for @transaction_status_delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get transaction_status_delivered;

  /// No description provided for @transaction_status_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get transaction_status_done;

  /// No description provided for @read_all.
  ///
  /// In en, this message translates to:
  /// **'Read All'**
  String get read_all;

  /// No description provided for @send_messages.
  ///
  /// In en, this message translates to:
  /// **'Send messages'**
  String get send_messages;

  /// No description provided for @my_orders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get my_orders;

  /// No description provided for @push_notification_setting.
  ///
  /// In en, this message translates to:
  /// **'Push Notification Setting'**
  String get push_notification_setting;

  /// No description provided for @whatsapp_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get whatsapp_name;

  /// No description provided for @whatsapp_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get whatsapp_price;

  /// No description provided for @whatsapp_order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get whatsapp_order_id;

  /// No description provided for @whatsapp_image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get whatsapp_image;

  /// No description provided for @whatsapp_order_product_greets.
  ///
  /// In en, this message translates to:
  /// **'Hello, I want to order this product'**
  String get whatsapp_order_product_greets;

  /// No description provided for @whatsapp_find_category_greets.
  ///
  /// In en, this message translates to:
  /// **'I\'\'m looking for the perfect gift and need some assistance. Can you help me find a {recommendation} that suits my needs? Here are some details about what I\'\'m looking for: \n[Add more details].'**
  String whatsapp_find_category_greets(String recommendation);

  /// No description provided for @whatsapp_button.
  ///
  /// In en, this message translates to:
  /// **'Contact us on Whatsapp'**
  String get whatsapp_button;

  /// No description provided for @whatsapp_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Finding the perfect gift?'**
  String get whatsapp_dialog_title;

  /// No description provided for @whatsapp_dialog_desc.
  ///
  /// In en, this message translates to:
  /// **'We can help you get this gift, talk to our sales assistant'**
  String get whatsapp_dialog_desc;

  /// No description provided for @example.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get example;

  /// No description provided for @ask_something.
  ///
  /// In en, this message translates to:
  /// **'Ask something...'**
  String get ask_something;

  /// No description provided for @reset_conversation_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Reset conversation?'**
  String get reset_conversation_confirmation;

  /// No description provided for @reset_conversation_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to reset this conversation?'**
  String get reset_conversation_confirmation_desc;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @ask_receive_any_code.
  ///
  /// In en, this message translates to:
  /// **'Didn’t you receive any code?'**
  String get ask_receive_any_code;

  /// No description provided for @resend_otp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP Code'**
  String get resend_otp;

  /// No description provided for @otp_verification.
  ///
  /// In en, this message translates to:
  /// **'Otp Verification'**
  String get otp_verification;

  /// No description provided for @check_wa_otp.
  ///
  /// In en, this message translates to:
  /// **'Check your WhatsApp to see the verification code'**
  String get check_wa_otp;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @your_point.
  ///
  /// In en, this message translates to:
  /// **'Your current point'**
  String get your_point;

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @continue_as_guest.
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get continue_as_guest;

  /// No description provided for @register_order_dialog_button_title.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register_order_dialog_button_title;

  /// No description provided for @register_order_dialog_desc.
  ///
  /// In en, this message translates to:
  /// **'Register on Untukmu to purchase this product'**
  String get register_order_dialog_desc;

  /// No description provided for @find_recommendation_product.
  ///
  /// In en, this message translates to:
  /// **'Hey {character}! I need gift recommendation for {event}'**
  String find_recommendation_product(String character, String event);

  /// No description provided for @what_your_interest.
  ///
  /// In en, this message translates to:
  /// **'What is your interest?'**
  String get what_your_interest;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @add_address_detail.
  ///
  /// In en, this message translates to:
  /// **'Add Your Address Details'**
  String get add_address_detail;

  /// No description provided for @add_address_detail_desc.
  ///
  /// In en, this message translates to:
  /// **'You can help people to sent a gift easily by adding your address details. Don\'\'t worry, your information is safe with us.'**
  String get add_address_detail_desc;

  /// No description provided for @use_your_point.
  ///
  /// In en, this message translates to:
  /// **'Use your point'**
  String get use_your_point;

  /// No description provided for @use_point.
  ///
  /// In en, this message translates to:
  /// **'Use Point'**
  String get use_point;

  /// No description provided for @point_left.
  ///
  /// In en, this message translates to:
  /// **'Point Left'**
  String get point_left;

  /// No description provided for @continue_text.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_text;

  /// No description provided for @add_new_recipient.
  ///
  /// In en, this message translates to:
  /// **'Add new gift recipients, you can also import from contacts on your device'**
  String get add_new_recipient;

  /// No description provided for @registered_user.
  ///
  /// In en, this message translates to:
  /// **'{name} is a registered member'**
  String registered_user(String name);

  /// No description provided for @use_address_question.
  ///
  /// In en, this message translates to:
  /// **'Would you like to use her dedicated address to send the gift?'**
  String get use_address_question;

  /// No description provided for @use_address_warning.
  ///
  /// In en, this message translates to:
  /// **'{name} set their address in private. But don’t worry, we will sent the gift to their dedicated address.'**
  String use_address_warning(String name);

  /// No description provided for @use_address_agree.
  ///
  /// In en, this message translates to:
  /// **'Yes, I want to use this'**
  String get use_address_agree;

  /// No description provided for @use_address_diagree.
  ///
  /// In en, this message translates to:
  /// **'No, I want to fill it manually'**
  String get use_address_diagree;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @your_contact.
  ///
  /// In en, this message translates to:
  /// **'Your Contact'**
  String get your_contact;

  /// No description provided for @contact_name.
  ///
  /// In en, this message translates to:
  /// **'Contact Name'**
  String get contact_name;

  /// No description provided for @search_name.
  ///
  /// In en, this message translates to:
  /// **'Search Name'**
  String get search_name;

  /// No description provided for @recent_recipient.
  ///
  /// In en, this message translates to:
  /// **'Recent Contact'**
  String get recent_recipient;

  /// No description provided for @find_recipient_empty.
  ///
  /// In en, this message translates to:
  /// **'You don\'\'t have a gift recipient yet, \nplease click here to add a new gift recipient'**
  String get find_recipient_empty;

  /// No description provided for @consignee.
  ///
  /// In en, this message translates to:
  /// **'Consignee'**
  String get consignee;

  /// No description provided for @confidential_address.
  ///
  /// In en, this message translates to:
  /// **'(consignee address is confidential)'**
  String get confidential_address;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @share_chat.
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'\'m looking for a gift with the Untukmu AI app.\nYou can see my conversation here {link}'**
  String share_chat(String link);

  /// No description provided for @try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get try_again;

  /// No description provided for @empty_point_history_title.
  ///
  /// In en, this message translates to:
  /// **'No Transactions Yet'**
  String get empty_point_history_title;

  /// No description provided for @empty_point_history_desc.
  ///
  /// In en, this message translates to:
  /// **'You have not used your points to make a transaction'**
  String get empty_point_history_desc;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @terrible.
  ///
  /// In en, this message translates to:
  /// **'Terrible'**
  String get terrible;

  /// No description provided for @bad.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get bad;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get average;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get good;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get excellent;

  /// No description provided for @thanks_feedback.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your feedback!'**
  String get thanks_feedback;

  /// No description provided for @dewi_button_tooltip.
  ///
  /// In en, this message translates to:
  /// **'Dewi Button'**
  String get dewi_button_tooltip;

  /// No description provided for @press_dewi_button_tooltip.
  ///
  /// In en, this message translates to:
  /// **'Press this button to start a Gifting session with Dewi'**
  String get press_dewi_button_tooltip;

  /// No description provided for @report_issue_chat_title.
  ///
  /// In en, this message translates to:
  /// **'Report Issue'**
  String get report_issue_chat_title;

  /// No description provided for @report_issue_chat_desc.
  ///
  /// In en, this message translates to:
  /// **'Here you can provide all the information you have about the issue. If possible, please add the steps you took to encounter the error/issue.'**
  String get report_issue_chat_desc;

  /// No description provided for @report_issue_chat_hint.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get report_issue_chat_hint;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @report_issue_chat_url.
  ///
  /// In en, this message translates to:
  /// **'Conversation URL:'**
  String get report_issue_chat_url;

  /// No description provided for @find_new_gift.
  ///
  /// In en, this message translates to:
  /// **'Find New Gift'**
  String get find_new_gift;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @thank_you.
  ///
  /// In en, this message translates to:
  /// **'Thank You'**
  String get thank_you;

  /// No description provided for @report_send.
  ///
  /// In en, this message translates to:
  /// **'Report submitted successfully!'**
  String get report_send;

  /// No description provided for @blibli_buy_button.
  ///
  /// In en, this message translates to:
  /// **'Buy at Blibli'**
  String get blibli_buy_button;

  /// No description provided for @blibli_fulfilled.
  ///
  /// In en, this message translates to:
  /// **'Fulfilled by Blibli'**
  String get blibli_fulfilled;

  /// No description provided for @delivery_address_label.
  ///
  /// In en, this message translates to:
  /// **'Delivery Address'**
  String get delivery_address_label;

  /// No description provided for @order_summary_label.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get order_summary_label;

  /// No description provided for @notes_order_add_label.
  ///
  /// In en, this message translates to:
  /// **'Add Notes'**
  String get notes_order_add_label;

  /// No description provided for @notes_order_edit_label.
  ///
  /// In en, this message translates to:
  /// **'Edit Notes'**
  String get notes_order_edit_label;

  /// No description provided for @notes_order_title.
  ///
  /// In en, this message translates to:
  /// **'Add notes to your order'**
  String get notes_order_title;

  /// No description provided for @notes_order_field_hint.
  ///
  /// In en, this message translates to:
  /// **'Add a personal note or special instructions'**
  String get notes_order_field_hint;

  /// No description provided for @find_a_gift_label.
  ///
  /// In en, this message translates to:
  /// **'Find a gift'**
  String get find_a_gift_label;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @updater_title.
  ///
  /// In en, this message translates to:
  /// **'A new update is available'**
  String get updater_title;

  /// No description provided for @updater_desc.
  ///
  /// In en, this message translates to:
  /// **'A new version of the app is now available. Would you like to update now to version {version} ?'**
  String updater_desc(String version);

  /// No description provided for @updater_release_note.
  ///
  /// In en, this message translates to:
  /// **'What\'\'s new on this version:'**
  String get updater_release_note;

  /// No description provided for @update_now.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get update_now;

  /// No description provided for @update_later.
  ///
  /// In en, this message translates to:
  /// **'Update later'**
  String get update_later;

  /// No description provided for @contact_list.
  ///
  /// In en, this message translates to:
  /// **'Contact list'**
  String get contact_list;

  /// No description provided for @add_new_contact.
  ///
  /// In en, this message translates to:
  /// **'Add New Contact'**
  String get add_new_contact;

  /// No description provided for @add_recipient.
  ///
  /// In en, this message translates to:
  /// **'Add Recipients'**
  String get add_recipient;

  /// No description provided for @confidential_recipient_address.
  ///
  /// In en, this message translates to:
  /// **'(This user set their address as private)'**
  String get confidential_recipient_address;

  /// No description provided for @unset_recipient_address.
  ///
  /// In en, this message translates to:
  /// **'(You haven\'\'t set their address yet)'**
  String get unset_recipient_address;

  /// No description provided for @set_address.
  ///
  /// In en, this message translates to:
  /// **'Set Address'**
  String get set_address;

  /// No description provided for @my_contacts.
  ///
  /// In en, this message translates to:
  /// **'My Contacts ({total})'**
  String my_contacts(String total);

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @invalid_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid format'**
  String get invalid_format;

  /// No description provided for @invalid_format_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number format, please check again'**
  String get invalid_format_phone_number;

  /// No description provided for @add_birthday.
  ///
  /// In en, this message translates to:
  /// **'Add birthday'**
  String get add_birthday;

  /// No description provided for @set_phone.
  ///
  /// In en, this message translates to:
  /// **'Set Phone'**
  String get set_phone;

  /// No description provided for @unset_recipient_phone.
  ///
  /// In en, this message translates to:
  /// **'(You haven\'\'t set their phone number yet)'**
  String get unset_recipient_phone;

  /// No description provided for @change_character_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Switch to '**
  String get change_character_confirmation;

  /// No description provided for @change_character_confirmation_desc.
  ///
  /// In en, this message translates to:
  /// **'Switching your character or language will restart your conversation from the beginning, and all previous messages will be deleted.\n\nAre you sure you want to proceed with changing your character or language?'**
  String get change_character_confirmation_desc;

  /// No description provided for @your_privacy_matters.
  ///
  /// In en, this message translates to:
  /// **'Your Privacy Matters'**
  String get your_privacy_matters;

  /// No description provided for @your_privacy_matters_desc.
  ///
  /// In en, this message translates to:
  /// **'By tapping \"Agree\", you allow us to upload and store your personal data on our secure server. Your trust is our top priority, and we promise to handle your information responsibly.\n\nBy continuing, you confirm you\'\'ve read and agreed to our '**
  String get your_privacy_matters_desc;

  /// No description provided for @agree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get agree;

  /// No description provided for @add_recipent_title.
  ///
  /// In en, this message translates to:
  /// **'Add recipient'**
  String get add_recipent_title;

  /// No description provided for @add_recipent_desc.
  ///
  /// In en, this message translates to:
  /// **'Please add one or more recipients by tapping the check circle in the contact list item'**
  String get add_recipent_desc;

  /// No description provided for @privacy_info.
  ///
  /// In en, this message translates to:
  /// **'We encrypt and securely store their details to make gift-sending easier, safeguarding their information just as we protect yours.'**
  String get privacy_info;

  /// No description provided for @set.
  ///
  /// In en, this message translates to:
  /// **'Set'**
  String get set;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @whatsapp_number.
  ///
  /// In en, this message translates to:
  /// **'Whatsapp Number'**
  String get whatsapp_number;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @recipient_name.
  ///
  /// In en, this message translates to:
  /// **'Recipient\'\'s Full Name'**
  String get recipient_name;

  /// No description provided for @edit_recipient_name_title.
  ///
  /// In en, this message translates to:
  /// **'Edit Recipient Name'**
  String get edit_recipient_name_title;

  /// No description provided for @edit_recipient_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Input recipient\'\'s Full Name'**
  String get edit_recipient_name_hint;

  /// No description provided for @detail_address.
  ///
  /// In en, this message translates to:
  /// **'Detail Address'**
  String get detail_address;

  /// No description provided for @detail_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Street Name, Building, House Number \n(Example: Perum Untukmu Blok C No. 11)'**
  String get detail_address_hint;

  /// No description provided for @prov_city_district_label.
  ///
  /// In en, this message translates to:
  /// **'Province / City / District'**
  String get prov_city_district_label;

  /// No description provided for @prov_city_district_hint.
  ///
  /// In en, this message translates to:
  /// **'Informasi Provinsi/Kota atau Kabupaten/Kecamatan/Desa atau Kecamatan'**
  String get prov_city_district_hint;

  /// No description provided for @confirm_profile_address.
  ///
  /// In en, this message translates to:
  /// **'Confirm Profile Address'**
  String get confirm_profile_address;

  /// No description provided for @search_product_now.
  ///
  /// In en, this message translates to:
  /// **'Search Product Now'**
  String get search_product_now;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
