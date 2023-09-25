import 'package:alsagr_app/HomePages/all_players.dart';
import 'package:alsagr_app/News/hotel.dart';
import 'package:alsagr_app/services/firebaseApi.dart';
import 'package:flutter/material.dart';

class playersCard extends StatefulWidget {
  const playersCard({super.key});

  @override
  State<playersCard> createState() => _playersCardState();
}

class _playersCardState extends State<playersCard> {
  /*
  لنتفرض ان هذي صفحة اللاعبين
  وعندنا لست من اللاعبين سواء اسمها وصور والخخ
  على طريقة  map
  players = [
    {
      image : 'https......',
      name : 'عثمان عمار العمار',
      number : '77',
      },
    {
      image : 'https......',
      name : 'احمد ....',
      number : '12',
      },
    {
      image : 'https......',
      name : 'عبيد الحربي', :D
      number : '77', 
      pos : 'حارس... وهيك طيب'
      },
  ]
مايحتاج رقمه احس يكفي اسمه واذا مهاجم ولا مدافع وكذا بس 
اوكي اهم شي شسمه يعني مثال يس
  وحابين نعرضهم في لسته مثل مارسمت لك قبل شوي 
   // حسيت بيطلع صعب لو سيده كتبت
   // Map < String , dynamic>
   يعني راح يكون عندنا map
   المتغير الي على اليسار نوعه سترنق
   الي عاليمين اي شي dynamic
   يعني عادي سترنق عادي انتجر عادي bool
   اي شي ببالك
   حتى null عادي
   الماب الواحد عباره عن لاعب واحد مثل فوق هنا
   {
      image : 'https......',
      name : 'عبيد الحربي', :D
      number : '77', 
      pos : 'حارس... وهيك طيب'
      },

      وهذول المابات ( اللاعبين ) بيكونون داخل لست
      ف الناتج :
      الى هنا تمام ؟يسس فهمت =د
      تمام
      كذا كود تبع لاعبين واكرره ع حسب عددهم صح 
      احنا ماراح نكرر
      هو مفروض يكون يعطونك من وين تجيبين اللاعبين بالضبط
      بس احنا بنسرق من الموقع
      ويتت 
   */
  List<Map<String, dynamic>> playersList = [
    {
      "Image": "assets/ghaled_mohammed.png",
      "Name": "غالب محمد خرمي",
    },
    {
      "Image": "assets/salah.png",
      "Name": "صالح محمد المحيميد",
    },
    {
      "Image": "assets/twoo.png",
      "Name": "ثنيان صالح الثنيان",
    },
    {
      "Image": "assets/cont_dd.png",
      "Name": "المدرب",
    },
    {
      "Image": "assets/nawaf_basem.png",
      "Name": "نواف بسام ",
    },
    {
      "Image": "assets/khala.png",
      "Name": "خالد مطهر ",
    },
    {
      "Image": "assets/alaa_mustafa.png",
      "Name": "علاء مصطفى كمال ",
    },
    {
      "Image": "assets/fayez.png",
      "Name": "فايز مشعان ",
    },
    {
      "Image": "assets/fares_hamdan.png",
      "Name": "فارس حمدان الشمري",
    },
    {
      "Image": "assets/wahad.png",
      "Name": " وحيد نبيه",
    },
    {
      "Image": "assets/yaqoub.png",
      "Name": " يعقوب احسن عثمان ",
    },
    {
      "Image": "assets/fahad_naser.png",
      "Name": "فهد ناصر الداوود",
    },
    {
      "Image": "assets/faisal_moh.png",
      "Name": "فيصل محمد المطيري ",
    },
    {
      "Image": "assets/moh_suliman.png",
      "Name": "محمد الدخيل ",
    },
    {
      "Image": "assets/fahad_shmry.png",
      "Name": "فهد مهاوش الشمري",
    },

    {
      "Image": "assets/suliman_alllv.png",
      "Name": "سليمان فهد الدليلان",
    },
    //
    {
      "Image": "assets/dauood_alkk.png",
      "Name": "داوود إبراهيم الطارف",
    },
    {
      "Image": "assets/du_aorgan.png",
      "Name": "دي اراجو سيلفا ",
    },
    {
      "Image": "assets/husian_all.png",
      "Name": "حسين عبدالإله محمد",
    },

    {
      "Image": "assets/zyid_as.png",
      "Name": "زيد عوض المطيري ",
    },
    {
      "Image": "assets/bul.png",
      "Name": "حسن فهد البلوي",
    },
    {
      "Image": "assets/abduralhman_alh.png",
      "Name": "عبدالرحمن عبدالعزيز القاسم",
    },
    {
      "Image": "assets/thamer_art.png",
      "Name": "ثامر معيبد الحربي ",
    },
  ];
  /*
  طيب الحين عندنا لسته
  playersList
  وفيها ماب كل ماب عباره عن لاعب
  وحابين نعرض اللسته هذي داخل widget
  مثل الي رسمته لاني رسام ماهر
   */
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: playersList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> currentPlayer = playersList[index];
                  return GestureDetector(
                    onTap: () {
                      print(currentPlayer);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 200,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Builder(builder: (context) {
                                String image = currentPlayer['Image'];
                                if (image.contains('http')) {
                                  return Image.network(
                                    currentPlayer['Image'],
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    fit: BoxFit.contain,
                                  );
                                } else {
                                  return Image.asset(
                                    currentPlayer['Image'],
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    fit: BoxFit.contain,
                                  );
                                }
                              }),
                            ),
                            Text(currentPlayer['POS'] ?? "ST"),
                            Text(currentPlayer['Name'] ?? ""),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () async {
                      await FirebaseApiService().addPlayersToFirebase();
                      // تودينه صفحه وتمررين اللسته عشان تعرضين الكل
                      //مافهمت كيف
                      // يلا نكمل شرح اجل ههههههههههههههههههههه
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         AllPlayers(playersList: playersList),
                      //   ),
                      // );
                    },
                    child: const Text('عرض المزيد')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
