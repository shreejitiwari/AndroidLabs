import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCameraModeColumn(
            'Pro Mode',
            'Offers manual control over settings like ISO, shutter speed, white balance, and focus for advanced users.',
          ),
          _buildCameraModeColumn(
            'Portrait Mode',
            'Creates a blurred background effect (bokeh) to highlight the subject, ideal for portraits.',
          ),
          _buildCameraModeColumn(
            'Night Mode',
            'Captures brighter and clearer images in low-light conditions using computational photography techniques.',
          ),
          _buildCameraModeColumn(
            'Panorama Mode',
            'Captures wide-angle panoramic images by stitching together multiple shots.',
          ),
          _buildCameraModeColumn(
            'Slow Motion Mode',
            'Records videos at a high frame rate for creating slow-motion effects.',
          ),
          _buildCameraModeColumn(
            'Time-Lapse Mode',
            'Captures a series of photos at intervals and combines them into a video, showing changes over time.',
          ),
        ],
    );
  }

  Widget _buildCameraModeColumn(String heading, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(description),
          ],
        ),
      ),
    );
  }
}