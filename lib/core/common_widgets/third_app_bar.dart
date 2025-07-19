import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/providers/providers.dart';

class ThirdAppBar extends ConsumerStatefulWidget {
  const ThirdAppBar({
    super.key,
    required this.storageFavoritesKey,
    required this.favoriteRoute,
  });

  final String storageFavoritesKey;
  final String favoriteRoute;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ThirdAppBarState();
}

class _ThirdAppBarState extends ConsumerState<ThirdAppBar> {
  @override
  Widget build(BuildContext context) {
    final storageFavoritesKeyValue =
        '${widget.storageFavoritesKey}|${widget.favoriteRoute}';

    final isFavorite = ref.watch(
      isFavoriteRouteProvider(storageFavoritesKeyValue),
    );

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              final storage = ref.read(localStorageProvider);
              final favorites =
                  storage.getStringList(widget.storageFavoritesKey) ?? [];

              if (isFavorite) {
                favorites.remove(widget.favoriteRoute);
              } else {
                favorites.add(widget.favoriteRoute);
              }

              await storage.setStringList(
                widget.storageFavoritesKey,
                favorites,
              );
              ref.invalidate(isFavoriteRouteProvider(storageFavoritesKeyValue));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isFavorite ? Colors.red : Colors.blue,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    isFavorite
                        ? 'Supprimer des favoris'
                        : 'Ajouter aux favoris',
                    style: TextStyle(
                      color: isFavorite ? Colors.red : Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
