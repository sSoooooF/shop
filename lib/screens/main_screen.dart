import 'package:shop/constants/colors.dart';
import 'package:shop/constants/text.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentBanner = 0;

  final List<String> _bannerImages = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Промо-баннер
          Stack(
            children: [
              SizedBox(
                height: 359,
                child: PageView.builder(
                  itemCount: _bannerImages.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentBanner = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            _bannerImages[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 166,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 18,
                child: Row(
                  children: List.generate(
                    _bannerImages.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentBanner == index
                            ? Colors.white
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 28,
                left: 24,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 52),
                    ),
                    const Text(
                      "Скидка -15%",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.01,
                      ),
                    ),
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Сыворотка',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.01,
                              ),
                            ),
                            Text(
                              'HA EYE & NECK SERUM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.01,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: const Text(
                            "Перейти к акции",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          // Картинки под баннером
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              bottom: 32,
              left: 10,
            ),
            child: SizedBox(
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    child: SizedBox(
                      height: 95,
                      width: 72,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 72,
                            width: 72,
                            child: Image.asset(
                              'assets/chip${index + 1}.png',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            chips[index],
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: 0.015,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Секции
          buildSectionTitle(
            'Новинки',
            AppColors.newColor1,
            AppColors.newColor2,
          ),
          const SizedBox(
            height: 25,
          ),
          buildProductList(
            [
              {
                "title": "Сыворотка",
                "description": "Unstress Total Serenity Serum",
                "price": 10195,
                "image": "assets/serum.jpg"
              },
              {
                "title": "Тоник",
                "description": "Unstress Revitalizing Toner",
                "price": 3095,
                "image": "assets/revitializin.png"
              },
              {
                "title": "Тоник",
                "description": "Unstress Revitalizing Toner",
                "price": 3095,
                "image": "assets/revitializin.png"
              }
            ],
          ),
          const SizedBox(
            height: 40.57,
          ),
          // Схема домашнего ухода
          schema(),
          const SizedBox(
            height: 24,
          ),
          buildSectionTitle(
            'Акции',
            AppColors.saleColor1,
            AppColors.saleColor2,
          ),
          const SizedBox(
            height: 25,
          ),
          buildProductList(
            [
              {
                "title": "Сыворотка",
                "description": "Muse Serum \nSupreme",
                "price_new": 10195,
                "price_old": 10195,
                "image": "assets/muse.png"
              },
              {
                "title": "Крем",
                "description": "Unstress Revitalizing Toner",
                "price_new": 1595,
                "price_old": 3195,
                "image": "assets/revital_toner.png"
              },
              {
                "title": "Тоник",
                "description": "Unstress Revitalizing Toner",
                "price_new": 3095,
                "price_old": 3095,
                "image": "assets/revitializin.png"
              }
            ],
            isSale: true,
          ),
          const SizedBox(
            height: 41,
          ),
          blocks(),
          const SizedBox(
            height: 25,
          ),
          buildSectionTitle(
            'Хиты',
            AppColors.hitsColor1,
            AppColors.hitsColor2,
          ),
          const SizedBox(
            height: 25,
          ),
          buildProductList(
            [
              {
                "title": "Сыворотка",
                "description": "Forever Young-Total Renewal Serum",
                "price": 10195,
                "image": "assets/young.png"
              },
              {
                "title": "Осветляющая маска",
                "description": "Illustious Mask",
                "price": 1595,
                "image": "assets/mask.png"
              },
              {
                "title": "Тоник",
                "description": "Unstress Revitalizing Toner",
                "price": 3095,
                "image": "assets/revitializin.png"
              }
            ],
          ),
          const SizedBox(
            height: 51,
          ),
        ],
      ),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget buildSectionTitle(String title, Color color1, Color color2) {
    return Container(
      width: 143,
      height: 40,
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.left,
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 4,
            width: 118,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductList(List<Map<String, dynamic>> products,
      {bool isSale = false}) {
    return SizedBox(
      height: 279,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            width: 162,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product['image'], fit: BoxFit.cover),
                ),
                const SizedBox(height: 6.95),
                Text(
                  product['title'],
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 11.58,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.01,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product['description'],
                  maxLines: 2,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.01,
                  ),
                ),
                const Spacer(),
                if (isSale) ...[
                  Row(
                    children: [
                      Text(
                        '${product['price_new']} ₽',
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                          letterSpacing: 0.01,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      if (product['price_old'] != null)
                        Text(
                          '${product['price_old']} ₽',
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            letterSpacing: 0.01,
                          ),
                        ),
                    ],
                  ),
                ] else ...[
                  Text(
                    '${product['price']} ₽',
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.01,
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget myBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: 0,
      onTap: (index) {},
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Главная",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Поиск",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Корзина",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Профиль",
        ),
      ],
    );
  }

  Widget schema() {
    return Container(
      height: 248,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/back.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 26,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 22,
            ),
            child: const Text(
              'Моя схема домашнего ухода',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          SizedBox(
            height: 101,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 81,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Image.asset(
                          'assets/schema${index + 1}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        schemas[index],
                        style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 22,
              ),
              const Text(
                'Ответьте на 10 вопросов, \nи мы подберем нужный уход',
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                width: 118,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Пройти тест',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget blocks() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 8,
          mainAxisExtent: 60,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 168,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              alignment: Alignment.center,
              child: Text(
                categories[index],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
