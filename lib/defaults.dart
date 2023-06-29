import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget errorBuilder(BuildContext context) => const Center(
      child: Text('Something went wrong :('),
    );

Widget loadingBuilder(BuildContext context) => const Center(
    child: SizedBox(
        width: 64, height: 64, child: CircularProgressIndicator()));
