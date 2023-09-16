import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              bodyMedium:
                  GoogleFonts.notoKufiArabic(fontWeight: FontWeight.w500))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xffefefef),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xff215376),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(50)),
                        gradient: LinearGradient(
                            colors: [Color(0xff215376), Color(0xff13293e)],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft)),
                  ),
                ),
                Expanded(
                    flex: 11,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffefefef),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(50, 20))),
                    ))
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/background.png',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'يا هلا بيك',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 35),
                  ),
                  Text(
                    'بالطريق الصحيح',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 210,margin: const EdgeInsets.only(bottom: 5),
                    child: MaterialButton(
                      height: 50,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      color: const Color(0xfffe6603),
                      child: Text(
                        'تسجيل الدخول',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 210,
                    child: MaterialButton(
                      height: 50,
                      color: Colors.white,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text(
                        'انشاء حساب',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Divider(
                        color: Colors.black,
                        thickness: 2,
                        endIndent: 10,
                        indent: 70,
                      )),
                      Text(
                        "تواصل",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const Expanded(
                          child: Divider(
                        color: Colors.black,
                        thickness: 2,
                        endIndent: 70,
                        indent: 10,
                      )),
                    ],
                  ),
                  Image.asset(
                    'assets/images/Instagram.png',
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "فريق سوا يرحب بكم",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
