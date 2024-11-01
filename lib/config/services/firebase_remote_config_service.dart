import 'package:firebase_remote_config/firebase_remote_config.dart';

/// A service class to manage Firebase Remote Config settings.
class FirebaseRemoteConfigService {
  /// Singleton instance of [FirebaseRemoteConfigService].
  static FirebaseRemoteConfigService? _instance;

  /// Instance of [FirebaseRemoteConfig] to interact with Firebase Remote Config.
  FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.instance;

  /// Private constructor to initialize the [FirebaseRemoteConfigService] and set default values.
  FirebaseRemoteConfigService._internal() {
    _instance = this;
    firebaseRemoteConfig.setDefaults(<String, dynamic>{
      'max_recipient': 30, // Maximum number of recipients allowed.
      'max_contact_recommendation':
          10, // Maximum number of contact recommendations.
      'google_map_suggestion_delay':
          500, // Delay for Google Map suggestions in milliseconds.
      'enable_payment_bca': true, // Enable payment via BCA.
      'enable_payment_bni': true, // Enable payment via BNI.
      'enable_payment_bri': true, // Enable payment via BRI.
      'gift_card_enable': false, // Enable or disable gift card feature.
      'enable_payment_permata': true, // Enable payment via Permata.
      'enable_payment_gopay': true, // Enable payment via GoPay.
      'enable_payment_shopeepay': true, // Enable payment via ShopeePay.
      'enable_payment_qris': true, // Enable payment via QRIS.
      'order_whatsapp_number':
          "6285281638653" // WhatsApp number for order inquiries.
    });
    firebaseRemoteConfig.fetchAndActivate();
  }

  /// Provides the singleton instance of [FirebaseRemoteConfigService].
  static FirebaseRemoteConfigService get instance {
    return _instance ?? FirebaseRemoteConfigService._internal();
  }
}
