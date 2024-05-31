import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model.dart';
import 'package:flutter_application_2/Services/apis.dart';
import 'package:http/retry.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    Api localdata = new Api();
    return Scaffold(
      appBar: AppBar(
        title: Text("MEME APP"),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: localdata.getdata(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MasonryGridView.builder(
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  Memes obj = snapshot.data!.data!.memes![i];
                  return Card(
                    child: CachedNetworkImage(
                      imageUrl: obj.url.toString(),
                      placeholder: (context, s) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Center(child: const CircularProgressIndicator()),
                        );
                      },
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: snapshot.data!.data!.memes!.length,
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        ),
      ),
    );
  }
}
