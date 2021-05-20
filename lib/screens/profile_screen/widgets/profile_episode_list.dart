import 'package:flutter/material.dart';
import 'package:rickandmorty/components/episode_item_list.dart';
import 'package:rickandmorty/data/models/episode.dart';

class ProfileEpisodeList extends StatelessWidget {
  const ProfileEpisodeList({Key? key, required this.list}) : super(key: key);

  final List<Episode> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: EpisodeItemList(episode: list[index]),
        );
      },
    );
  }
}
