import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testing_training/repositories/topic_list/models/models.dart';
import 'package:testing_training/router/router.dart';

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
        onPressed: () {
          AutoRouter.of(context).push(ModuleSelectRoute(topic: topic));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  topic.name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  "Вопросов: ${topic.questionsCount}",
                  style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ));
  }
}
