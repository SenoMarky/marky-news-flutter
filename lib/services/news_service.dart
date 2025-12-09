import '../models/news_model.dart';
import '../utils/constants.dart';

// This service will use dummy data for now
// Later it will be replaced with Laravel API calls
class NewsService {
  // Get all news (dummy data)
  Future<List<NewsModel>> getAllNews() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    return DummyData.dummyNews
        .map((json) => NewsModel.fromJson(json))
        .toList();
  }

  // Get news by ID (dummy data)
  Future<NewsModel?> getNewsById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    
    try {
      final json = DummyData.dummyNews.firstWhere((news) => news['id'] == id);
      return NewsModel.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  // Get news by category (dummy data)
  Future<List<NewsModel>> getNewsByCategory(String category) async {
    await Future.delayed(const Duration(milliseconds: 500));
    
    return DummyData.dummyNews
        .where((json) => json['category'] == category)
        .map((json) => NewsModel.fromJson(json))
        .toList();
  }

  // TODO: Replace with Laravel API
  // Future<List<NewsModel>> getAllNewsFromAPI() async {
  //   final response = await http.get(Uri.parse('${AppConstants.apiBaseUrl}/news'));
  //   if (response.statusCode == 200) {
  //     final List<dynamic> data = json.decode(response.body);
  //     return data.map((json) => NewsModel.fromJson(json)).toList();
  //   } else {
  //     throw Exception('Failed to load news');
  //   }
  // }
}
