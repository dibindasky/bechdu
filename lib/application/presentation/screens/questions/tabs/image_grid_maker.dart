import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/answer_index_changer.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/image_seletion_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageGridMaker extends StatefulWidget {
  const ImageGridMaker({super.key, required this.list});

  final List<Question> list;

  @override
  State<ImageGridMaker> createState() => _ImageGridMakerState();
}

class _ImageGridMakerState extends State<ImageGridMaker> {
  int dependencyValue = 0;
  int previousDependencyValue = 0;

  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        controller: scrollController,
        //physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: widget.list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: widget.list.length <= 4 ? 1 / 1.7 : 1 / 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: widget.list.length <= 4 ? 2 : 3,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return BlocBuilder<QuestionTabBloc, QuestionTabState>(
                    builder: (context, state) {
                      final answers = state.selectedAnswers[
                              state.sections![state.selectedTabIndex].heading!]!
                          .where((element) =>
                              element.description ==
                              widget.list[index].description)
                          .toList();
                      return GridTileQuestion(
                        onTap: () {
                          setState(() {});
                        },
                        option: widget.list[index],
                        selected: answers.isNotEmpty,
                      );
                    },
                  );
                },
              ),
            ),
            kHeight20,
            AnswerIndexChanger(
              scrollController: scrollController,
              onTap: () {
                scrollController.jumpTo(0);
              },
            ),
            kHeight20
          ],
        ),
      ),
    );
  }
}
