import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/answer_index_changer.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/grid_option_selector_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionMaker extends StatefulWidget {
  const GridOptionMaker({super.key, required this.list});

  final List<Question> list;

  @override
  State<GridOptionMaker> createState() => _GridOptionMakerState();
}

class _GridOptionMakerState extends State<GridOptionMaker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<QuestionTabBloc, QuestionTabState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final answers = state.selectedAnswers[
                            state.sections![state.selectedTabIndex].heading!]!
                        .where((element) =>
                            element.description ==
                            widget.list[index].description)
                        .toList();
                    return GridOptionSelectorTile(
                      option: widget.list[index],
                      selected: answers.isNotEmpty,
                      onTap: () {
                        context.read<QuestionTabBloc>().add(
                            QuestionTabEvent.markAnswer(
                                selectedOption: SelectedOption(
                                    description: widget.list[index].description,
                                    heading: state
                                        .sections![state.selectedTabIndex]
                                        .heading,
                                    value: null,
                                    type: state
                                        .sections![state.selectedTabIndex]
                                        .options![index]
                                        .type)));
                        setState(() {});
                      },
                    );
                  },
                ),
                kHeight30,
                // const AnswerIndexChanger(),
                kHeight30
              ],
            ),
          );
        },
      ),
    );
  }
}
