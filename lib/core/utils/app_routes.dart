import 'package:get/get.dart';
import 'package:flutter_application_1/modules/home/home_binding.dart';
import 'package:flutter_application_1/modules/home/home_screen.dart';
import 'package:flutter_application_1/modules/specialist/specialist_binding.dart';
import 'package:flutter_application_1/modules/specialist/specialist_screen.dart';
import 'package:flutter_application_1/modules/service/service_binding.dart';
import 'package:flutter_application_1/modules/service/select_service_screen.dart';
import 'package:flutter_application_1/modules/calendar/calendar_binding.dart';
import 'package:flutter_application_1/modules/calendar/select_date_screen.dart';
import 'package:flutter_application_1/modules/booking/booking_binding.dart';
import 'package:flutter_application_1/modules/booking/booking_details_screen.dart';
import 'package:flutter_application_1/modules/booking/booking_confirmation_screen.dart';
import 'package:flutter_application_1/modules/booking/booking_cancellation_screen.dart';
import 'package:flutter_application_1/modules/profile/profile_binding.dart';
import 'package:flutter_application_1/modules/profile/profile_screen.dart';
import 'package:flutter_application_1/modules/auth/auth_binding.dart';
import 'package:flutter_application_1/modules/auth/login_screen.dart';
import 'package:flutter_application_1/modules/auth/signup_screen.dart';
import 'package:flutter_application_1/modules/auth/otp_screen.dart';
import 'package:flutter_application_1/modules/auth/sign_in_code_screen.dart';
import 'package:flutter_application_1/modules/auth/sign_in_password_screen.dart';
import 'package:flutter_application_1/modules/auth/personal_account_screen.dart';
import 'package:flutter_application_1/modules/auth/privacy_policy_screen.dart';
import 'package:flutter_application_1/modules/auth/user_agreements_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String specialist = '/specialist';
  static const String selectService = '/select-service';
  static const String selectDate = '/select-date';
  static const String bookingDetails = '/booking-details';
  static const String bookingConfirmation = '/booking-confirmation';
  static const String bookingCancellation = '/booking-cancellation';
  static const String profile = '/profile';
  static const String personalAccount = '/personal-account';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String signInCode = '/sign-in-code';
  static const String signInPassword = '/sign-in-password';
  static const String privacyPolicy = '/privacy-policy';
  static const String userAgreements = '/user-agreements';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: specialist,
      page: () => const SpecialistScreen(),
      binding: SpecialistBinding(),
    ),
    GetPage(
      name: selectService,
      page: () => const SelectServiceScreen(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: selectDate,
      page: () => const SelectDateScreen(),
      binding: CalendarBinding(),
    ),
    GetPage(
      name: bookingDetails,
      page: () => const BookingDetailsScreen(),
      binding: BookingBinding(),
    ), 
    GetPage(
      name: bookingConfirmation,
      page: () => const BookingConfirmationScreen(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: bookingCancellation,
      page: () => const BookingCancellationScreen(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: personalAccount,
      page: () => const PersonalAccountScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: signup,
      page: () => const SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: otp,
      page: () => const OtpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: signInCode,
      page: () => const SignInWithCodeScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: signInPassword,
      page: () => const SignInWithPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: privacyPolicy,
      page: () => const PrivacyPolicyScreen(),
    ),
    GetPage(
      name: userAgreements,
      page: () => const UserAgreementsScreen(),
    ),
  ];
}
