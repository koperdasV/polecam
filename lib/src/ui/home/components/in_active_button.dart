import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    Key? key,
    required this.text,
    this.fontSize = 17,
  }) : super(key: key);

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFd93150),
            Color(0xFFf17088),
            Color(0xFFfc8ca1),
          ],
        ),
      ),
      child: CupertinoButton(
        onPressed: (){},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

const jsonString = '''
[
    {
        "type": "RECOMMENDATION",
        "timpestamp": "???",
        "source": {
            "name": "Petro Poroshenko",
            "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Official_portrait_of_Petro_Poroshenko.jpg/1200px-Official_portrait_of_Petro_Poroshenko.jpg"
        },
        "target": {
            "name": "Michał Woźniak",
            "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Official_portrait_of_Petro_Poroshenko.jpg/1200px-Official_portrait_of_Petro_Poroshenko.jpg"
        },
        "card": {
            "name": "Найкращі цукерки тільки в мене"
        }
    },
    {
        "type": "RECOMMENDATION",
        "timpestamp": "???",
        "source": {
            "name": "Petro Poroshenko",
            "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Official_portrait_of_Petro_Poroshenko.jpg/1200px-Official_portrait_of_Petro_Poroshenko.jpg"
        },
        "target": {
            "name": "Юля Тимошенко",
            "avatar": "https://media.slovoidilo.ua/media/publications/14/131116/131116-1_large.jpg"
        },
        "card": {
            "name": "Мирного рішення не"
        }
    },
    {
        "type": "RECOMMENDATION",
        "timpestamp": "???",
        "source": {
            "name": "Oleksandr Povoroznyk",
            "avatar": "https://dynamo.kiev.ua/media/posts/2021/10/06/111_dynamo.kiev.ua_6.jpg"
        },
        "target": {
            "name": "Вова Зеленський",
            "avatar": "https://kor.ill.in.ua/m/1200x0/2781504.jpeg"
        },
        "card": {
            "name": "Вова, %баш їх бл%ть"
        }
    }
]
''';
