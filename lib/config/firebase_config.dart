import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseConfig {
  static Future<FirebaseOptions> get platformOptions async {
    return FirebaseOptions(
      apiKey: dotenv.env['FIREBASE_API_KEY'] ?? '',
      appId: dotenv.env['FIREBASE_APP_ID'] ?? '',
      messagingSenderId: dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? '',
      projectId: dotenv.env['FIREBASE_PROJECT_ID'] ?? '',
      authDomain: dotenv.env['FIREBASE_AUTH_DOMAIN'] ?? '',
      databaseURL: 'https://langmatch-f0b00-default-rtdb.europe-west1.firebasedatabase.app',
      storageBucket: dotenv.env['FIREBASE_STORAGE_BUCKET'] ?? '',
    );
  }
} 