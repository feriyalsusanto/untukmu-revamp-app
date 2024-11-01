import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Find the Perfect Gift,\nEvery Time';

  @override
  String get tagline => 'To the easiest ways to bring others joy';

  @override
  String get phone_number_label => 'Phone Number';

  @override
  String get google_sign_label => 'Sign in with Google';

  @override
  String get apple_sign_label => 'Sign in with Apple';

  @override
  String get whatsapp_sign_label => 'Sign in with WhatsApp';

  @override
  String get facebook_sign_label => 'Sign in with Facebook';

  @override
  String greet_morning_label(String name) {
    return 'Good morning $name 👋';
  }

  @override
  String greet_afternoon_label(String name) {
    return 'Good afternoon $name 👋';
  }

  @override
  String greet_evening_label(String name) {
    return 'Good evening $name 👋';
  }

  @override
  String get language_label => 'Language';

  @override
  String get setting_label => 'Settings';

  @override
  String get navbar_home => 'Home';

  @override
  String get navbar_categories => 'Categories';

  @override
  String get navbar_calendar => 'Calendar';

  @override
  String get navbar_activities => 'Activity';

  @override
  String get navbar_profile => 'Profile';

  @override
  String get name => 'Name';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get email => 'Email';

  @override
  String get select_religion => 'Select Religion';

  @override
  String get interest => 'Interest';

  @override
  String get save_profile => 'Save Profile';

  @override
  String get incomplete_data => 'Incomplete data. ';

  @override
  String get fill_all_data =>
      'Please fill in all required fields and try again.';

  @override
  String get success => 'Success';

  @override
  String get data_updated => 'Data updated successfully';

  @override
  String get full_name => 'Full Name';

  @override
  String get gender => 'Gender';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get place_of_birth => 'Place of Birth';

  @override
  String get date_of_birth => 'Date of Birth';

  @override
  String get full_address => 'Full address';

  @override
  String get postal_code => 'Postal Code';

  @override
  String get notes => 'Notes';

  @override
  String get save => 'Save';

  @override
  String get contact_saved => 'Contact saved successfully.';

  @override
  String get edit_contact => 'Edit Contact';

  @override
  String get fill_identity => 'Fill Identity';

  @override
  String get fill_your_identity => 'Complete Your Identity';

  @override
  String get account => 'Account';

  @override
  String get orders => 'Orders';

  @override
  String get contacts => 'Contacts';

  @override
  String get address => 'Address';

  @override
  String get cards_payment => 'Cards and Payment';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get terms_conditions => 'Terms & Condition';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get help_support => 'Help & Support';

  @override
  String get get_help => 'Get Help';

  @override
  String get log_out => 'Log Out';

  @override
  String get delete_account => 'Delete Account';

  @override
  String get what_can_i_do => 'Let\"s send a gift';

  @override
  String get upcoming_event => 'Upcoming Events';

  @override
  String get see_all => 'See All';

  @override
  String get gift_someone_label => 'I want to gift someone';

  @override
  String get gift_myself_label => 'I want to gift myself';

  @override
  String get how_may_assist_label => 'How may I assist you today?';

  @override
  String get welcome_back_label => 'Welcome back';

  @override
  String get what_occasion_narration_label =>
      'Sure, What\'s the occasion you want to celebrate with them?';

  @override
  String get some_occasion_label => 'Here some occasion for you:';

  @override
  String get lets_find_contact_label =>
      'Great! Let\'s find a contact to send the gift.';

  @override
  String get find_recipient_label => 'Find the recipient you \nwant to send';

  @override
  String my_recommendation_product_label(String event_name) {
    return 'Here are my recommendations products for celebrating $event_name';
  }

  @override
  String get has_calculated_shipping_narration_label =>
      'I have calculated your shipping cost, please review it before confirming your order.';

  @override
  String get another_product_label => 'Another Product';

  @override
  String get total_recipient => 'Total Recipient';

  @override
  String get add_gifting_card_label => 'Want to add Gifting card?';

  @override
  String get choose_payment_method_narration_label =>
      'Before I calculate your total cost, please choose your payment method first.';

  @override
  String get payment_code => 'Payment Code';

  @override
  String get payment_deadline => 'Payment Deadline';

  @override
  String payment_expires_in(String counter) {
    return 'Pay within $counter before the\n Virtual Account No. expired';
  }

  @override
  String get account_number => 'Virtual Account Number';

  @override
  String get total => 'Total';

  @override
  String get how_to_payment => 'How to make payment';

  @override
  String get check_purchase_history => 'Check your purchase history';

  @override
  String get copied_to_clipboard => 'Copied to clipboard';

  @override
  String get bank_payment_instructions => 'Bank Payment Instructions';

  @override
  String get next => 'Next';

  @override
  String get edit_address => 'Edit Address';

  @override
  String get see_detail => 'See Detail';

  @override
  String get stock => 'Stock';

  @override
  String get description_product => 'Product Description';

  @override
  String get customer_review => 'Customer Review';

  @override
  String get price => 'Price';

  @override
  String get continue_buy => 'Continue to Buy';

  @override
  String get search_contact => 'Search contacts';

  @override
  String get contact_not_found_create =>
      'Contact not found. Would you like to create a new contact?';

  @override
  String get create_new_contact => 'Create New Contact';

  @override
  String get add => 'Add';

  @override
  String days_ago(String days) {
    return '$days days ago';
  }

  @override
  String in_days(String days) {
    return 'in $days days';
  }

  @override
  String get today => 'Today';

  @override
  String get upcoming => 'Upcoming';

  @override
  String get total_order_cost => 'Total Order Cost';

  @override
  String get platform_fee => 'Platform Fee';

  @override
  String get total_price => 'Total Price';

  @override
  String get gifting_card => 'Gifting Card';

  @override
  String get free => 'FREE';

  @override
  String get proceed_payment => 'Proceed Payment';

  @override
  String get your_place_of_birth => 'Your place of birth';

  @override
  String get full_address_hint => 'Full address with house/apartment numbers';

  @override
  String get your_postal_code => 'Your postal code';

  @override
  String get notes_label => 'e.g: building no, house color, etc';

  @override
  String get birthday => 'Birthday';

  @override
  String get change => 'Change';

  @override
  String get shipping_from => 'Shipping from ';

  @override
  String get product_left => ' left';

  @override
  String get cancel => 'Cancel';

  @override
  String get i_want_this => 'I want this';

  @override
  String get gifting_card_message_hint =>
      'Wishing you all the happiness someone as nice as you deserves.';

  @override
  String get messages => 'Messages';

  @override
  String get gifting_card_narrator_label =>
      'Add color to your gifts with our gift cards. Choose your design now.';

  @override
  String get back => 'Back';

  @override
  String get create_contact => 'Create Contact';

  @override
  String get empty_contact_label => 'You haven\'t add any contact yet.';

  @override
  String get empty_contact_description => 'Add contact to sent a gift';

  @override
  String get empty_chat_description =>
      'You haven\'t had a conversation\n with the gift merchant yet';

  @override
  String get import_contact_label => 'Import Phone Contact';

  @override
  String get track_package => 'Track';

  @override
  String get track_your_package => 'Track your package';

  @override
  String get enter_track_package_hint => 'Enter your tracking number';

  @override
  String get transaction_fee => 'Transaction Fee';

  @override
  String get copy => 'Copy';

  @override
  String get login_greet => 'I\'m Dewi, your virtual AI assistant';

  @override
  String get select_preferred_lang => 'Select your preferred\nlanguage';

  @override
  String get select_preferred_lang_label =>
      'You will use the same language throughout the app';

  @override
  String get pending => 'Pending';

  @override
  String get paid => 'Paid';

  @override
  String get onprocess => 'On Process';

  @override
  String get shipped => 'Shipped';

  @override
  String get delivered => 'Delivered';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get send_whatsapp_label => 'Send WhatsApp';

  @override
  String whatsapp_message_notify_template(
      String name, String trackingdeeplink, String trackingnumber) {
    return 'Hi $name,\n\nGood news! I have a special gift for you and you can track its delivery status on the Untukmu App.\n\nTo track your delivery, please click this link: $trackingdeeplink.\n\nAlternatively, you can also copy the airway bill number $trackingnumber and paste it on track item section on homepage.\n\nIf you haven\'t downloaded the app yet, you can find it on the Playstore on this link below\nhttps://untukmu.ai/download\n\nEnjoy your gift!';
  }

  @override
  String get share_info_friend_label => 'Share with your contact';

  @override
  String get see_trx_detail_label => 'View Transaction Details';

  @override
  String get order_status => 'Order Status';

  @override
  String get info_shipping => 'Shipping Information';

  @override
  String get download_invoice => 'Download Invoice';

  @override
  String get detail_transaction_title => 'Detail Transaction';

  @override
  String get id_transaction => 'ID Transaction';

  @override
  String get order_date => 'Order Date';

  @override
  String get total_product_price => 'Total Item Price';

  @override
  String gifting_to_recipient(String total) {
    return 'Gifting to: $total Recipient';
  }

  @override
  String get order_history => 'Order History';

  @override
  String get total_shipping => 'Total Shipping';

  @override
  String get payment_details => 'Payment Details';

  @override
  String get empty_order_label => 'No Order Yet';

  @override
  String get empty_order_description =>
      'You haven\'t placed any orders yet. When you do, they\'ll appear here';

  @override
  String get no_internet_label => 'Unable to Connect to the Internet';

  @override
  String get no_internet_desc =>
      'We\'re sorry, it seems like we\'re having trouble connecting to the internet. Please check your internet connection and try again.';

  @override
  String get discover_title_1 =>
      'Create lasting memory by picking the perfect occasion.';

  @override
  String get discover_subtitle_1 => 'Swipe to continue';

  @override
  String get discover_title_2 =>
      'Add a Personal Touch and Make Your Gift One-of-a-Kind.';

  @override
  String get discover_subtitle_2 => 'Swipe to continue';

  @override
  String get discover_title_3 =>
      'Create lasting memory by picking the perfect occasion.';

  @override
  String get discover_subtitle_3 => 'Swipe to continue';

  @override
  String get no_address_title => 'You haven\'t put any address';

  @override
  String get no_address_desc => 'Add your address for shipping';

  @override
  String get detail_product_title => 'Product Description';

  @override
  String get courier => 'Courier';

  @override
  String get tracking_number => 'Tracking Number';

  @override
  String get delete_contact => 'Delete Contact';

  @override
  String get delete_contact_confirmation => 'Delete This Contact?';

  @override
  String get delete_contact_confirmation_desc =>
      'Are you sure to delete this contact?';

  @override
  String get no_answer => 'No';

  @override
  String get yes_answer => 'Yes';

  @override
  String get contact_deleted => 'Contact Deleted';

  @override
  String get write_review => 'Write a Review';

  @override
  String get give_feedback_label => 'Give your feedback';

  @override
  String get feedback_input_hint =>
      'What did you like about it? What could we improve? We\'re all ears';

  @override
  String get submit => 'Submit';

  @override
  String get success_review_title => 'Thank You for Your Review';

  @override
  String get success_review_desc =>
      'We appreciate your review! Your feedback helps us improve and other shoppers make better decisions.';

  @override
  String get continue_shopping => 'Continue Shopping';

  @override
  String get total_amount => 'Total Amount';

  @override
  String get payment_method_selected => 'Payment Method Selected';

  @override
  String get delete_account_label => 'Delete account';

  @override
  String get delete_account_confirmation => 'Delete account confirmation';

  @override
  String get delete_account_confirmation_desc =>
      'Are you sure you want to delete your account? This action is permanent and cannot be undone.';

  @override
  String get delete_account_confirmed => 'Delete account';

  @override
  String get delete_account_cancel => 'Cancel';

  @override
  String get delete_account_success_title => 'Account Deleted';

  @override
  String get delete_account_success_desc => 'Your Account deleted successfully';

  @override
  String get purchase_label => 'Bayar';

  @override
  String get give_rating_label => 'Give a rating';

  @override
  String get sold => 'Sold';

  @override
  String get no_rating => 'No rating';

  @override
  String get pick_location_title => 'Pick a Location';

  @override
  String get show_map_title => 'Menampilkan Peta';

  @override
  String get select_location_label => 'Select Location';

  @override
  String get search_for_address => 'Search for Address';

  @override
  String get search_address_hint => 'Enter the district / city name';

  @override
  String get zipcode => 'Zip code';

  @override
  String get type => 'Type';

  @override
  String get error_not_fill_name => 'Please fill name data';

  @override
  String get error_not_fill_phone => 'Please fill phone number data';

  @override
  String get error_not_fill_address => 'Please fill address data';

  @override
  String get save_address => 'Save Address';

  @override
  String get added => 'Added';

  @override
  String get edited => 'edited';

  @override
  String get use_current_location => 'Use current location';

  @override
  String get no_available_product_title => 'No Available Product';

  @override
  String get no_available_product_desc =>
      'There are no available products for this event';

  @override
  String get no_available_product_price_desc =>
      'There are no available products on this price range';

  @override
  String get no_available_data_title => 'No Available Data';

  @override
  String get no_available_data_desc =>
      'There is no data available for this transaction';

  @override
  String get no_notification_data_title => 'No Notification Yet';

  @override
  String get no_notification_data_desc =>
      'Start shopping and discover new products from our sellers today';

  @override
  String get already_added => 'Already Added';

  @override
  String get select => 'Select';

  @override
  String get no_review_yet => 'No reviews yet for this product';

  @override
  String get be_first_review =>
      'Be the first to leave a review and help others choose the right product!';

  @override
  String get max_recipient_reached => 'maximum recipient reached!';

  @override
  String get error_not_fill_zipcode => 'Please fill postal code';

  @override
  String get set_address_main => 'Set as Main';

  @override
  String get tracking_number_not_available => 'Tracking number not available';

  @override
  String get product_price => 'Product Price';

  @override
  String get shipping_cost => 'Shipping Costs';

  @override
  String get estimated_arrival => 'Estimated Arrival';

  @override
  String get get_started => 'Get Started';

  @override
  String get onboarding_title_1 => 'Welcome to Untukmu\nGifting AI';

  @override
  String get onboarding_subtitle_1 =>
      'With Untukmu, gifting has never been easier. We\'re here to help you make each occasion special, without the stress of finding the perfect gift.';

  @override
  String get onboarding_title_2 => 'Sync Your Calendar';

  @override
  String get onboarding_subtitle_2 =>
      'Let us help you stay on top of important dates! Sync your online calendar with Untukmu so we can remind you of upcoming events and make personalized gift recommendations.';

  @override
  String get onboarding_title_3 => 'Choose Your Gift';

  @override
  String get onboarding_subtitle_3 =>
      'Our AI-powered Gift Catalogue has something for everyone. Simply choose the occasion and let us handle the rest. With Untukmu, you\'ll always give the perfect gift.';

  @override
  String get review => 'Review';

  @override
  String get event_calendar => 'Event Calendar';

  @override
  String get no_event_running => 'No event running';

  @override
  String get add_address => 'Add Address';

  @override
  String get cant_find_contact_name_label => 'We can’t find that name';

  @override
  String get cant_find_contact_name_desc =>
      'you can add more contact or find another name';

  @override
  String get no_birthday_filled => 'No birthday filled';

  @override
  String get contact_imported => 'Contact Imported';

  @override
  String get card_payment_title => 'Cards & Payment';

  @override
  String get preferred_payment_method => 'Your preferred payment method';

  @override
  String get add_credit_card => 'Add Credit Card';

  @override
  String get payment_card_added => 'Payment Card Added';

  @override
  String get payment_card_deleted => 'Payment Card Deleted';

  @override
  String get upload_photo => 'Upload Photo';

  @override
  String get select_photo => 'Select a photo';

  @override
  String get capture_camera => 'Capture Camera';

  @override
  String get pick_from_gallery => 'Pick From Gallery';

  @override
  String get what_are_they_interested => 'What are they interested in?';

  @override
  String get import_contact => 'Import Contact';

  @override
  String get phone_contacts => 'Phone Contacts';

  @override
  String get select_all => 'Select All';

  @override
  String get unselect_all => 'Unselect All';

  @override
  String get cant_find_name => 'We can’t find that name';

  @override
  String get cant_add_more => 'you can add more contact or find another name';

  @override
  String get import => 'Import';

  @override
  String get quick_access => 'Quick Access';

  @override
  String get recommendation => 'Recommendation';

  @override
  String get server_error_title => 'Server Error 🚧';

  @override
  String get server_error_desc =>
      'There is an issue with the server, please try again in a few moments.';

  @override
  String get retry => 'Retry';

  @override
  String get remove_address => 'Remove Address';

  @override
  String get main => 'Main';

  @override
  String get delete => 'Delete';

  @override
  String get delete_address_confirmation => 'Delete Address?';

  @override
  String get delete_address_confirmation_desc =>
      'Are you sure you want to delete this address?';

  @override
  String get delete_address_success => 'Address Deleted';

  @override
  String get delete_address_success_desc => 'Address Deleted Successfully';

  @override
  String get pick_location_guide =>
      'click on the map to determine the location point';

  @override
  String get coming_soon => 'Coming Soon';

  @override
  String get add_contact => 'Add Contact';

  @override
  String get import_phone_contact => 'Import Phone Contact';

  @override
  String get appearance => 'Appearance';

  @override
  String get update_profile => 'Update Profile';

  @override
  String get change_photo => 'Change Photo';

  @override
  String get how_can_we_help => 'How can we\nhelp you?';

  @override
  String get start_conversation => 'Start Conversation';

  @override
  String get data_not_available => 'Data not available';

  @override
  String get add_event => 'Add Event';

  @override
  String get edit_event => 'Edit Event';

  @override
  String get event_type => 'Event Type';

  @override
  String get event_title => 'Event Title';

  @override
  String get input_event_title => 'Input Event Title';

  @override
  String get for_who => 'For Who? ';

  @override
  String get optional => 'Optional';

  @override
  String get input_event_recipient => 'Input the event\'s recipient';

  @override
  String get date_of_event => 'Date of Event';

  @override
  String get input_date_of_event => 'Input date of event';

  @override
  String get input_notes => 'Add a note';

  @override
  String get event_added => 'Event added';

  @override
  String get event_edited => 'Event edited';

  @override
  String get event_deleted => 'Event deleted';

  @override
  String get done => 'Done';

  @override
  String get finish => 'Finish';

  @override
  String get finish_order_title => 'Finish Order';

  @override
  String get finish_order_desc =>
      'By clicking Done, the funds will be transferred to the seller and you will not be able to file a complaint.';

  @override
  String get delete_event => 'Delete Event';

  @override
  String get delete_event_confirmation => 'Delete This Event?';

  @override
  String get delete_event_confirmation_desc =>
      'Are you sure to delete this event?';

  @override
  String get select_type => 'Select Type';

  @override
  String get select_address_type => 'Select Address Type';

  @override
  String get chat => 'Chat';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get chat_merchant_suggestion_1 =>
      'Hi, is this gift product still available?';

  @override
  String get chat_merchant_suggestion_2 => 'Hi, is this product ready?';

  @override
  String get chat_merchant_suggestion_3 => 'When can it be shipped?';

  @override
  String whatsapp_message_confirm_template(String name) {
    return 'Hi $name,\n\nHave you already receive gift from me? please confirm';
  }

  @override
  String get notification => 'Notification';

  @override
  String get transaction_status_all => 'All';

  @override
  String get transaction_status_pending => 'Pending';

  @override
  String get transaction_status_paid => 'Paid';

  @override
  String get transaction_status_on_processed => 'On Process';

  @override
  String get transaction_status_shipped => 'Shipped';

  @override
  String get transaction_status_delivered => 'Delivered';

  @override
  String get transaction_status_done => 'Done';

  @override
  String get read_all => 'Read All';

  @override
  String get send_messages => 'Send messages';

  @override
  String get my_orders => 'My Orders';

  @override
  String get push_notification_setting => 'Push Notification Setting';

  @override
  String get whatsapp_name => 'Name';

  @override
  String get whatsapp_price => 'Price';

  @override
  String get whatsapp_order_id => 'Order ID';

  @override
  String get whatsapp_image => 'Image';

  @override
  String get whatsapp_order_product_greets =>
      'Hello, I want to order this product';

  @override
  String whatsapp_find_category_greets(String recommendation) {
    return 'I\'m looking for the perfect gift and need some assistance. Can you help me find a $recommendation that suits my needs? Here are some details about what I\'m looking for: \n[Add more details].';
  }

  @override
  String get whatsapp_button => 'Contact us on Whatsapp';

  @override
  String get whatsapp_dialog_title => 'Finding the perfect gift?';

  @override
  String get whatsapp_dialog_desc =>
      'We can help you get this gift, talk to our sales assistant';

  @override
  String get example => 'Example';

  @override
  String get ask_something => 'Ask something...';

  @override
  String get reset_conversation_confirmation => 'Reset conversation?';

  @override
  String get reset_conversation_confirmation_desc =>
      'Are you sure to reset this conversation?';

  @override
  String get resend => 'Resend';

  @override
  String get ask_receive_any_code => 'Didn’t you receive any code?';

  @override
  String get resend_otp => 'Resend OTP Code';

  @override
  String get otp_verification => 'Otp Verification';

  @override
  String get check_wa_otp => 'Check your WhatsApp to see the verification code';

  @override
  String get history => 'History';

  @override
  String get your_point => 'Your current point';

  @override
  String get you => 'You';

  @override
  String get continue_as_guest => 'Continue as Guest';

  @override
  String get register_order_dialog_button_title => 'Register';

  @override
  String get register_order_dialog_desc =>
      'Register on Untukmu to purchase this product';

  @override
  String find_recommendation_product(String character, String event) {
    return 'Hey $character! I need gift recommendation for $event';
  }

  @override
  String get what_your_interest => 'What is your interest?';

  @override
  String get skip => 'Skip';

  @override
  String get add_address_detail => 'Add Your Address Details';

  @override
  String get add_address_detail_desc =>
      'You can help people to sent a gift easily by adding your address details. Don\'t worry, your information is safe with us.';

  @override
  String get use_your_point => 'Use your point';

  @override
  String get use_point => 'Use Point';

  @override
  String get point_left => 'Point Left';

  @override
  String get continue_text => 'Continue';

  @override
  String get add_new_recipient =>
      'Add new gift recipients, you can also import from contacts on your device';

  @override
  String registered_user(String name) {
    return '$name is a registered member';
  }

  @override
  String get use_address_question =>
      'Would you like to use her dedicated address to send the gift?';

  @override
  String use_address_warning(String name) {
    return '$name set their address in private. But don’t worry, we will sent the gift to their dedicated address.';
  }

  @override
  String get use_address_agree => 'Yes, I want to use this';

  @override
  String get use_address_diagree => 'No, I want to fill it manually';

  @override
  String get confirm => 'Confirm';

  @override
  String get your_contact => 'Your Contact';

  @override
  String get contact_name => 'Contact Name';

  @override
  String get search_name => 'Search Name';

  @override
  String get recent_recipient => 'Recent Contact';

  @override
  String get find_recipient_empty =>
      'You don\'t have a gift recipient yet, \nplease click here to add a new gift recipient';

  @override
  String get consignee => 'Consignee';

  @override
  String get confidential_address => '(consignee address is confidential)';

  @override
  String get more => 'More';

  @override
  String share_chat(String link) {
    return 'Hi, I\'m looking for a gift with the Untukmu AI app.\nYou can see my conversation here $link';
  }

  @override
  String get try_again => 'Try again';

  @override
  String get empty_point_history_title => 'No Transactions Yet';

  @override
  String get empty_point_history_desc =>
      'You have not used your points to make a transaction';

  @override
  String get faq => 'FAQ';

  @override
  String get terrible => 'Terrible';

  @override
  String get bad => 'Bad';

  @override
  String get average => 'Average';

  @override
  String get good => 'Good';

  @override
  String get excellent => 'Excellent';

  @override
  String get thanks_feedback => 'Thank you for your feedback!';

  @override
  String get dewi_button_tooltip => 'Dewi Button';

  @override
  String get press_dewi_button_tooltip =>
      'Press this button to start a Gifting session with Dewi';

  @override
  String get report_issue_chat_title => 'Report Issue';

  @override
  String get report_issue_chat_desc =>
      'Here you can provide all the information you have about the issue. If possible, please add the steps you took to encounter the error/issue.';

  @override
  String get report_issue_chat_hint => 'Description';

  @override
  String get send => 'Send';

  @override
  String get report_issue_chat_url => 'Conversation URL:';

  @override
  String get find_new_gift => 'Find New Gift';

  @override
  String get share => 'Share';

  @override
  String get thank_you => 'Thank You';

  @override
  String get report_send => 'Report submitted successfully!';

  @override
  String get blibli_buy_button => 'Buy at Blibli';

  @override
  String get blibli_fulfilled => 'Fulfilled by Blibli';

  @override
  String get delivery_address_label => 'Delivery Address';

  @override
  String get order_summary_label => 'Order Summary';

  @override
  String get notes_order_add_label => 'Add Notes';

  @override
  String get notes_order_edit_label => 'Edit Notes';

  @override
  String get notes_order_title => 'Add notes to your order';

  @override
  String get notes_order_field_hint =>
      'Add a personal note or special instructions';

  @override
  String get find_a_gift_label => 'Find a gift';

  @override
  String get reset => 'Reset';

  @override
  String get updater_title => 'A new update is available';

  @override
  String updater_desc(String version) {
    return 'A new version of the app is now available. Would you like to update now to version $version ?';
  }

  @override
  String get updater_release_note => 'What\'s new on this version:';

  @override
  String get update_now => 'Update now';

  @override
  String get update_later => 'Update later';

  @override
  String get contact_list => 'Contact list';

  @override
  String get add_new_contact => 'Add New Contact';

  @override
  String get add_recipient => 'Add Recipients';

  @override
  String get confidential_recipient_address =>
      '(This user set their address as private)';

  @override
  String get unset_recipient_address => '(You haven\'t set their address yet)';

  @override
  String get set_address => 'Set Address';

  @override
  String my_contacts(String total) {
    return 'My Contacts ($total)';
  }

  @override
  String get quantity => 'Quantity';

  @override
  String get failed => 'Failed';

  @override
  String get invalid_format => 'Invalid format';

  @override
  String get invalid_format_phone_number =>
      'Invalid phone number format, please check again';

  @override
  String get add_birthday => 'Add birthday';

  @override
  String get set_phone => 'Set Phone';

  @override
  String get unset_recipient_phone =>
      '(You haven\'t set their phone number yet)';

  @override
  String get change_character_confirmation => 'Switch to ';

  @override
  String get change_character_confirmation_desc =>
      'Switching your character or language will restart your conversation from the beginning, and all previous messages will be deleted.\n\nAre you sure you want to proceed with changing your character or language?';

  @override
  String get your_privacy_matters => 'Your Privacy Matters';

  @override
  String get your_privacy_matters_desc =>
      'By tapping \"Agree\", you allow us to upload and store your personal data on our secure server. Your trust is our top priority, and we promise to handle your information responsibly.\n\nBy continuing, you confirm you\'ve read and agreed to our ';

  @override
  String get agree => 'Agree';

  @override
  String get add_recipent_title => 'Add recipient';

  @override
  String get add_recipent_desc =>
      'Please add one or more recipients by tapping the check circle in the contact list item';

  @override
  String get privacy_info =>
      'We encrypt and securely store their details to make gift-sending easier, safeguarding their information just as we protect yours.';

  @override
  String get set => 'Set';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get whatsapp_number => 'Whatsapp Number';

  @override
  String get verify => 'Verify';

  @override
  String get recipient_name => 'Recipient\'s Full Name';

  @override
  String get edit_recipient_name_title => 'Edit Recipient Name';

  @override
  String get edit_recipient_name_hint => 'Input recipient\'s Full Name';

  @override
  String get detail_address => 'Detail Address';

  @override
  String get detail_address_hint =>
      'Street Name, Building, House Number \n(Example: Perum Untukmu Blok C No. 11)';

  @override
  String get prov_city_district_label => 'Province / City / District';

  @override
  String get prov_city_district_hint =>
      'Informasi Provinsi/Kota atau Kabupaten/Kecamatan/Desa atau Kecamatan';

  @override
  String get confirm_profile_address => 'Confirm Profile Address';

  @override
  String get search_product_now => 'Search Product Now';
}
