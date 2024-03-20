import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/yes_or_no_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoListMaker extends StatefulWidget {
  const YesOrNoListMaker({super.key, required this.list});

  final List<Question> list;

  @override
  State<YesOrNoListMaker> createState() => _YesOrNoListMakerState();
}

class _YesOrNoListMakerState extends State<YesOrNoListMaker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BlocBuilder<QuestionTabBloc, QuestionTabState>(
                    builder: (context, state) {
                      final answers = state.selectedAnswers[
                              state.sections![state.selectedTabIndex].heading!]!
                          .where((element) =>
                              element.description ==
                              widget.list[index].description)
                          .toList();
                      final selection =
                          answers.isEmpty ? null : answers.first.value;
                      print('selection $index => $selection');
                      return YesOrNoTile(
                        onTap: () => setState(() {}),
                        state: state,
                        option: widget.list[index],
                        selected: selection,
                      );
                    },
                  );
                },
              ),
            ),
            kHeight30,
            // const AnswerIndexChanger(),
            // kHeight30
          ],
        ),
      ),
    );
  }
}
