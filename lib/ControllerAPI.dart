import 'package:example_api/ApiService.dart';
import 'package:example_api/makananmodel.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = <Category>[].obs;

  void goToDetail(Category category) {
    Get.toNamed('/detail', arguments: category);
  }

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var posts = await ApiService().fetchPosts();
      postList.assignAll(posts);
    } finally {
      isLoading(false);
    }
  }
}