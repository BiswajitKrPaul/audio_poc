import 'package:audio_poc/screens/cubit/player_card_cubit.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  static const String routeName = '/player';

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final List<GlobalKey<_PlayerCardState>> playerCardKeys = List.generate(
    2,
    (index) => GlobalKey(),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) async {
        final state = playerCardKeys[value].currentState;
        if (state != null) {
          await Future.delayed(const Duration(seconds: 1));
          state.play();
        }
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        final assetName = "assets/song${index + 1}.mp3";
        return BlocProvider(
          create: (context) => PlayerCardCubit()..setData(assetName),
          child: Builder(
            builder: (ctx) {
              return PlayerCard(key: playerCardKeys[index]);
            },
          ),
        );
      },
    );
  }
}

class PlayerCard extends StatefulWidget {
  const PlayerCard({super.key});

  @override
  State<PlayerCard> createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  void play() {
    context.read<PlayerCardCubit>().play();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCardCubit, PlayerCardState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return Card(
          child: Column(
            spacing: 16,
            children: [
              AudioFileWaveforms(
                size: Size(MediaQuery.of(context).size.width, 200.0),
                playerController: state.playerController!,
              ),
              ElevatedButton(
                child: Text("Play"),
                onPressed: () async {
                  context.read<PlayerCardCubit>().play();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
