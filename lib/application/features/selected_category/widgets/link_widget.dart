import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({super.key, required this.link});
  final String link;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Source',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            GestureDetector(
              onTap: () async {
                await launchUrl(Uri.parse(link));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tap for view source', style: TextStyle(fontSize: 16)),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
