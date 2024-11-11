import 'package:example_api/ControllerAPI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostView extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX API Example'),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: postController.postList.length,
          itemBuilder: (context, index) {
            final post = postController.postList[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(post.strCategoryThumb),
                  radius: 25,
                ),
                title: Text(
                  post.strCategory,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
               
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[700],
                ),
                contentPadding: EdgeInsets.all(10),
                onTap: () {
                  postController.goToDetail(post);
                },
              ),
            );
          },
        );
      }),
    );
  }
}