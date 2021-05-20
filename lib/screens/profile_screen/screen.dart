import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rickandmorty/components/custom_icon_back.dart';
import 'package:rickandmorty/data/models/episode.dart';
import 'package:rickandmorty/data/repository.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/screens/profile_screen/widgets/profile_character_info.dart';
import 'package:rickandmorty/screens/profile_screen/widgets/profile_episode_list.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final Repository _repository = Repository();

  late List<Episode> _episodes;

  @override
  void initState() {
    _episodes = _repository.getEpisodes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.background,
      body: _buildScreen(context),
      // body: Container(
      //   color: Colors.amber,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       Text('dddsd'),
      //       Text('dddsd'),
      //       Text('dddsd'),
      //       Text('dddsd'),
      //       Text('dddsd'),
      //       Text('dddsd'),
      //       Text('dddsd'),
      //     ],
      //   ),
      // ),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            SizedBox(
              height: 310,
              child: _buildHeader(context),
            ),
            _buildProfileContent(),
            const SizedBox(height: 36),
            Divider(
              color: ColorTheme.divider,
              height: 2,
            ),
            const SizedBox(height: 36),
            _buildEpisodes(),
          ],
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 218,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/avatars/rick_sanches.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  BoxDecoration(color: ColorTheme.grey1.withOpacity(0.65)),
            ),
          ),
        ),
        Positioned(
          top: 54,
          left: 24,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomIconBack(
              backgroundColor: ColorTheme.backgroundSearch,
              iconColor: ColorTheme.white,
            ),
          ),
        ),
        Positioned(
          top: 138,
          left: MediaQuery.of(context).size.width / 2 - 73,
          child: Container(
            width: 146,
            height: 146,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/avatars/rick_sanches.jpg'),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorTheme.background,
                width: 6,
              ),
            ),
          ),
        ),
        Positioned(
          top: 310,
          child: _buildProfileContent(),
        ),
      ],
    );
  }

  Widget _buildProfileContent() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Text(
            'Рик Санчез',
            style: AppStyle.profileCharacterName,
          ),
          const SizedBox(height: 4),
          Text(
            ALIVE,
            style: AppStyle.status_alive,
          ),
          const SizedBox(height: 36),
          Text(
            'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.',
            style: AppStyle.profileCharacterDescription,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 24),
          ProfileCharacterInfo(),
        ],
      ),
    );
  }

  Widget _buildEpisodes() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(EPISODES, style: AppStyle.titleSection),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(EPISODES_ALL, style: AppStyle.caption1),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          ProfileEpisodeList(list: _episodes),
        ],
      ),
    );
  }
}
