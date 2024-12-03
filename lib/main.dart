import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // darkTheme: ThemeData.dark(
        // ),
        home: SafeArea(
            child: Scaffold(
          body: Card(
            color: const Color.fromARGB(255, 104, 184, 249),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://proxy.misskeyusercontent.jp/avatar.webp?url=https%3A%2F%2Fs3.fedibird.com%2Faccounts%2Favatars%2F112%2F836%2F255%2F559%2F855%2F548%2Foriginal%2F88bc9615af1494b1.jpg&avatar=1"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("ここには投稿内容とかが入るよ！"),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print("いいね！が押されたよ！");
                        },
                        child: const Text("いいね！")),
                  ],
                )),
          ),
        )));
  }
}

// class MyAppPage extends StatelessWidget {
//   const MyAppPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Card(
//           child: Stack(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Hello World",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     Text("ここだいじ"),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 left: 8, // ひだりに8ピクセル
//                 top: 8, // 上に8ピクセル
//                 child: ElevatedButton(child: Text("ボタン"), onPressed: () {}),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
