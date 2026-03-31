import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portifolio/utils/app_color.dart';

import '../shared/contacts_widget.dart';
import '../shared/header_intro_widget.dart';
import '../shared/stacks_avaliable_widget.dart';
import '../shared/works_made_widget.dart';

class Home extends HookWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final scrollController = useScrollController();

    final worksKey = useMemoized(() => GlobalKey());
    final stacksKey = useMemoized(() => GlobalKey());
    final contactsKey = useMemoized(() => GlobalKey());

    final showWorks = useState(false);
    final showStacks = useState(false);
    final showContacts = useState(false);

    useEffect(() {
      void checkVisibility(GlobalKey key, ValueNotifier<bool> state) {
        final context = key.currentContext;
        if (context != null && !state.value) {
          final box = context.findRenderObject() as RenderBox?;
          if (box != null) {
            final offset = box.localToGlobal(Offset.zero).dy;
            final screenHeight = MediaQuery.of(context).size.height;

            if (offset < screenHeight * 0.8) {
              state.value = true;
            }
          }
        }
      }

      void scrollListener() {
        checkVisibility(worksKey, showWorks);
        checkVisibility(stacksKey, showStacks);
        checkVisibility(contactsKey, showContacts);
      }

      scrollController.addListener(scrollListener);
      return () => scrollController.removeListener(scrollListener);
    }, [scrollController]);

    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      trackVisibility: true,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            // HEADER
            HeaderIntroWidget(),

            const Icon(Icons.keyboard_double_arrow_down_rounded, color: AppColors.gray300, size: 60),
            SizedBox(height: height * 0.05),

            // WORKS
            AnimatedOpacity(
              key: worksKey,
              opacity: showWorks.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeOut,
              child: WorksMadeWidget(),
            ),
            SizedBox(height: height * 0.15),

            // STACKS
            AnimatedOpacity(
              key: stacksKey,
              opacity: showStacks.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeOut,
              child: StacksAvaliableWidget(),
            ),
            SizedBox(height: height * 0.15),

            // CONTACTS
            AnimatedOpacity(
              key: contactsKey,
              opacity: showContacts.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeOut,
              child: ContactsWidget(),
            ),
            SizedBox(height: height * 0.15),
          ],
        ),
      ),
    );
  }
}
