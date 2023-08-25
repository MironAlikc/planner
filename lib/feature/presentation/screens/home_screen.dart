import 'package:flutter/material.dart';
import 'package:planner/feature/presentation/theme/app_colors.dart';
import 'package:planner/feature/presentation/theme/app_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final List<String> _appBarTitles = [
    'Цели',
    'Дела',
    'Трекер',
    'Заметки',
    'Финансы',
  ];
  final List<List<IconData>> _appBarIcons = [
    [Icons.home],
    [Icons.calendar_today_outlined, Icons.map],
    [Icons.business, Icons.map],
    [Icons.calendar_today_outlined, Icons.map],
    [Icons.school, Icons.notifications, Icons.favorite],
  ];

  final List<Widget> _widgetOptions = <Widget>[
    Text('111'),
    Text('222'),
    Text('222'),
    Text('333'),
    Text('444'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> data = [
      Icons.folder_open,
      Icons.notes_rounded,
      Icons.track_changes,
      Icons.note_alt_outlined,
      Icons.person_outline_sharp,
    ];

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.volume_up),
                      tooltip: '',
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'Planner',
                    style: AppFonts.w700s25,
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Войти'),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Planner Premium',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Темы'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.business,
              ),
              title: const Text('Language'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.school,
              ),
              title: const Text('Настройки'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.close,
              ),
              title: const Text('Подержать проект'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Поделиться'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
              ),
              title: const Text('Обратная связь'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_forward),
              title: const Text('Оценить нас'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            const Text('version: 1.0.0'),
            const SizedBox(height: 20),
          ],
        ),
      ),
      appBar: AppBar(
        //backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          _appBarTitles[_selectedIndex],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _appBarIcons[_selectedIndex].map((icon) {
                return IconButton(
                  icon: Icon(icon, color: Colors.black),
                  onPressed: () {
                    if (icon == Icons.home) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const CalendarScreen()),
                      // );
                    } else if (icon == Icons.calendar_today_outlined) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const CalendarScreen()),
                      // );
                    }
                    // Добавь другие условия для остальных иконок
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
      // backgroundColor: Colors.white,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Material(
          //elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: ColorsApp.mainColor,
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (ctx, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    if (_selectedIndex == i) return;
                    setState(() {
                      _selectedIndex = i;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 40,
                    decoration: BoxDecoration(
                      border: i == _selectedIndex
                          ? const Border(
                              top: BorderSide(
                                width: 3.0,
                                color: Colors.white,
                              ),
                            )
                          : null,
                      gradient: i == _selectedIndex
                          ? LinearGradient(
                              colors: [
                                  Colors.grey.shade700,
                                  const Color(0xFF0abab5)
                                ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          : null,
                    ),
                    child: Icon(
                      data[i],
                      size: 35,
                      color: i == _selectedIndex
                          ? Colors.white
                          : Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
