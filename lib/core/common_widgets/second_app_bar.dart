import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';
import '../../core/providers.dart';

class SecondAppBar extends ConsumerStatefulWidget {
  const SecondAppBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SecondAppBarState();
}

class _SecondAppBarState extends ConsumerState<SecondAppBar> {
  @override
  Widget build(BuildContext context) {
    ref.watch(currentPageViewModelProvider);
    ref.watch(goRouterProvider);

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 36,
                child: ElevatedButton(
                  onPressed:
                      () => ref
                          .read(currentPageViewModelProvider.notifier)
                          .setState(CurrentPageState.exercices()),

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        ref
                                .read(currentPageViewModelProvider.notifier)
                                .isExercices()
                            ? Colors.blue
                            : Colors.grey[350],
                    foregroundColor:
                        ref
                                .read(currentPageViewModelProvider.notifier)
                                .isExercices()
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
                      () => ref
                          .read(currentPageViewModelProvider.notifier)
                          .setState(CurrentPageState.exams()),

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        ref
                                .read(currentPageViewModelProvider.notifier)
                                .isExams()
                            ? Colors.blue
                            : Colors.grey[350],
                    foregroundColor:
                        ref
                                .read(currentPageViewModelProvider.notifier)
                                .isExams()
                            ? Colors.white
                            : Colors.black,
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
                child: Icon(Icons.menu, color: Colors.grey[700], size: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
