import 'package:flutter/material.dart';
import 'package:trains/model/todo_model.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.model, this.onTapEdit, this.onTapDelete});

  final ToDoModel model;
  final VoidCallback? onTapEdit;
  final VoidCallback? onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.03),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.02),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              ),
              Row(
                children: [
                  GestureDetector(onTap: onTapEdit,child: const Icon(Icons.edit, color: Colors.blue)),
                  const SizedBox(width: 15),
                  GestureDetector(onTap: onTapDelete,child: const Icon(Icons.delete_rounded, color: Colors.pink)),
                ],
              ),
            ],
          ),
          Text(
            model.content,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
