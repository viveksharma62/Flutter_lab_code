import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MyGridView extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');
  final List<String> imageUrls = [
    "https://images.unsplash.com/photo-1604457407295-8aa34e462dcf?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1587027077233-c7a2e15825cf?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1526489550178-7bd5d9944f4f?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1546272989-40c92939c6c2?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1583511655802-41f2ccc2cc8f?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1476922027627-aa7293e3aaa8?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1470688090067-6d429c0b2600?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1594031633878-c59f0c8c16fd?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1559214369-a6b1d7919865?w=500&auto=format&fit=crop&q=60",
    "https://images.unsplash.com/photo-1578326626553-39f72c545b07?w=500&auto=format&fit=crop&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView App'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ZoomableImageView(
                    imageUrl: imageUrls[index % imageUrls.length],
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    imageUrls[index % imageUrls.length],
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ZoomableImageView extends StatelessWidget {
  final String imageUrl;

  ZoomableImageView({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: PhotoView(
            imageProvider: NetworkImage(imageUrl),
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
