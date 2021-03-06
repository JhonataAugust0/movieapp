import 'package:flutter/material.dart';
import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/utils/api.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.network(
              API.REQUEST_IMG(movie.posterPath),
              loadingBuilder: (_, child, progress) {
                if (progress == null) return child;
                return CircularProgressIndicator.adaptive();
              },
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline6,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                Spacer(),
                Text('Popularidade: ' + movie.popularity.toString()),
                const SizedBox(height: 10),
                Text('Votos: ' + movie.voteAverage.toString()),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
