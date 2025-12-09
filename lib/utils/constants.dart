class AppConstants {
  // App Info
  static const String appName = 'Portal Berita';
  static const String appVersion = '1.0.0';

  // Firebase Collections
  static const String usersCollection = 'users';
  static const String newsCollection = 'news';
  static const String commentsCollection = 'comments';

  // Routes (will be used later)
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String homeRoute = '/home';
  static const String profileRoute = '/profile';
  static const String newsDetailRoute = '/news-detail';

  // API Base URL (for future Laravel integration)
  static const String apiBaseUrl = 'http://localhost:8000/api';

  // Validation
  static const int minPasswordLength = 6;
  static const int maxBioLength = 200;
}

class DummyData {
  // Dummy news data
  static final List<Map<String, dynamic>> dummyNews = [
    {
      'id': '1',
      'title': 'Flutter 3.0 Dirilis dengan Fitur Baru',
      'content': 'Flutter 3.0 telah dirilis dengan berbagai fitur menarik termasuk dukungan penuh untuk desktop dan peningkatan performa.',
      'author': 'Admin',
      'image_url': 'https://picsum.photos/400/200?random=1',
      'category': 'Teknologi',
      'published_at': DateTime.now().subtract(const Duration(hours: 2)).toIso8601String(),
      'comments_count': 5,
    },
    {
      'id': '2',
      'title': 'Tips Belajar Programming untuk Pemula',
      'content': 'Berikut adalah beberapa tips efektif untuk memulai perjalanan programming Anda.',
      'author': 'Editor',
      'image_url': 'https://picsum.photos/400/200?random=2',
      'category': 'Tutorial',
      'published_at': DateTime.now().subtract(const Duration(hours: 5)).toIso8601String(),
      'comments_count': 12,
    },
    {
      'id': '3',
      'title': 'Firebase Authentication: Panduan Lengkap',
      'content': 'Pelajari cara mengimplementasikan Firebase Authentication dalam aplikasi Flutter Anda.',
      'author': 'Admin',
      'image_url': 'https://picsum.photos/400/200?random=3',
      'category': 'Tutorial',
      'published_at': DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
      'comments_count': 8,
    },
    {
      'id': '4',
      'title': 'Tren Teknologi 2025',
      'content': 'Simak tren teknologi yang akan mendominasi tahun 2025.',
      'author': 'Editor',
      'image_url': 'https://picsum.photos/400/200?random=4',
      'category': 'Teknologi',
      'published_at': DateTime.now().subtract(const Duration(days: 2)).toIso8601String(),
      'comments_count': 3,
    },
  ];
}
