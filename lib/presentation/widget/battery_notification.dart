import 'package:flutter/material.dart';

class BatteryNotification extends StatelessWidget {
  final String message;
  final String description;
  final Color backgroundColor;

  const BatteryNotification({
    super.key,
    required this.message,
    required this.description,
    this.backgroundColor = const Color(0xFFD32F2F),
  });

  IconData _getBatteryIcon() {
    if (message.contains('Full')) {
      return Icons.battery_full;
    } else if (message.contains('Medium')) {
      return Icons.battery_3_bar;
    } else {
      return Icons.battery_alert;
    }
  }

  Color _getIconColor() {
    if (message.contains('Full')) {
      return const Color(0xFF4CAF50); // Green
    } else if (message.contains('Medium')) {
      return const Color(0xFFFFA726); // Orange
    } else {
      return const Color(0xFFEF5350); // Red
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0F2569),
                Color(0xFF1F1E6B),
              ],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: _getIconColor(),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _getBatteryIcon(),
                  color: _getIconColor(),
                  size: 48,
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Battery is ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: message.split('is ').last,
                            style: TextStyle(
                              color: _getIconColor(),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
