// lib/my_home_screen.dart
import 'package:flutter/material.dart';
import 'main.dart'; // Import your main.dart file

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Games App')),
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text('Title: ${website.head.title}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                   const SizedBox(height: 20),

                   const Text("Featured Games:", style: TextStyle(fontWeight: FontWeight.bold)),
                    ...website.body.featDiv.articles.map((article) =>
                     Padding(
                       padding: const EdgeInsets.only(bottom: 8.0),
                      child:  Text('Game: ${article.aTag.title ?? 'No title'}', ),
                        )
                    ).toList(),
                    const SizedBox(height: 20,),
                    const Text("Menu:", style: TextStyle(fontWeight: FontWeight.bold)),

                   ...website.body.header.headerWrapDiv.menuDiv.actionsUl.liTags.map((menuItem) =>
                   Padding(
                       padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Category: ${menuItem.text ?? 'No category'}'),
                       )
                   ).toList(),
                    const SizedBox(height: 20,),
                    const Text("Footer:", style: TextStyle(fontWeight: FontWeight.bold)),
                     Text('Copyright: ${website.body.footer.copyRight}'),
                    Text('Powered by: ${website.body.footer.footerContainer.poweredDiv.poweredText}'),
                ],
              )
             ),

      ),
    );
  }
}