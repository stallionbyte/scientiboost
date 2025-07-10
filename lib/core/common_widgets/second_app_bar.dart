import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

class SecondAppBar extends ConsumerStatefulWidget {
  const SecondAppBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SecondAppBarState();
}

class _SecondAppBarState extends ConsumerState<SecondAppBar> {
  @override
  Widget build(BuildContext context) {
    final currentPageState = ref.watch(currentPageViewModelProvider);

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: 36,
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(currentPageViewModelProvider.notifier)
                      .setExercices();
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      currentPageState is Exercices
                          ? Colors.blue
                          : Colors.grey.shade300,
                  foregroundColor:
                      currentPageState is Exercices
                          ? Colors.white
                          : Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                child: Text(
                  'Exercices',
                  style: TextStyle(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: 36,
              child: ElevatedButton(
                onPressed:
                    () =>
                        ref
                            .read(currentPageViewModelProvider.notifier)
                            .setExams(),

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      currentPageState is Exams
                          ? Colors.blue
                          : Colors.grey.shade300,
                  foregroundColor:
                      currentPageState is Exams ? Colors.white : Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                child: Text(
                  'Examens',
                  style: TextStyle(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),

          // Icône burger/croix
          GestureDetector(
            onTap: () => ref.read(goRouterProvider).push('/menu'),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Icon(Icons.menu, color: Colors.black, size: 24),
            ),
          ),

          SizedBox(width: 12),
        ],
      ),
    );
  }
}
