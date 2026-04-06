import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portifolio/utils/app_color.dart';
import 'package:portifolio/utils/app_utils.dart';
import 'package:portifolio/widgets/shared/fade_in_slide.dart';

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
        if (state.value) return;
        
        final context = key.currentContext;
        if (context != null) {
          final box = context.findRenderObject() as RenderBox?;
          if (box != null) {
            final offset = box.localToGlobal(Offset.zero).dy;
            final screenHeight = MediaQuery.sizeOf(context).height;

            // Trigger animation slightly earlier for smoother feel
            if (offset < screenHeight * 0.85) {
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
      // Run once to check visibility of items already in view
      WidgetsBinding.instance.addPostFrameCallback((_) => scrollListener());
      
      return () => scrollController.removeListener(scrollListener);
    }, [scrollController]);

    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      trackVisibility: true,
      child: SingleChildScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // HEADER - Always visible at start, maybe a slight delay?
            const FadeInSlide(
              duration: AppUtils.normal,
              offset: 30.0,
              child: HeaderIntroWidget(),
            ),

            InkWell(
              onTap: () {
                final context = worksKey.currentContext;
                if (context != null) {
                  Scrollable.ensureVisible(
                    context,
                    duration: AppUtils.slow,
                    curve: Curves.easeInOut,
                  );
                }
              },
              borderRadius: AppUtils.borderRadiusXL,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.keyboard_double_arrow_down_rounded,
                  color: AppColors.gray300,
                  size: 60,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),

            // WORKS
            FadeInSlide(
              key: worksKey,
              show: showWorks.value,
              duration: AppUtils.slow,
              offset: 50.0,
              child: const WorksMadeWidget(),
            ),
            SizedBox(height: height * 0.15),

            // STACKS
            FadeInSlide(
              key: stacksKey,
              show: showStacks.value,
              duration: AppUtils.slow,
              offset: 50.0,
              child: const StacksAvaliableWidget(),
            ),
            SizedBox(height: height * 0.15),

            // CONTACTS
            FadeInSlide(
              key: contactsKey,
              show: showContacts.value,
              duration: AppUtils.slow,
              offset: 50.0,
              child: const ContactsWidget(),
            ),
            SizedBox(height: height * 0.15),
          ],
        ),
      ),
    );
  }
}
