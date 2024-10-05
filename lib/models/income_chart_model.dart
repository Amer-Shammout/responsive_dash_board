import 'package:flutter/material.dart';

class IncomeChartModel {
  final Color color;
  final double value;
  final String? title;

  const IncomeChartModel({
    this.title,
    required this.color,
    required this.value,
  });
}
