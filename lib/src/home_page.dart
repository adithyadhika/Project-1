import 'package:flutter/material.dart';

import 'theme.dart';
import 'widgets/feature_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  void _increment() => setState(() => _count++);

  @override
  Widget build(BuildContext context) {
    final TextTheme text = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 960),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const _Badge(label: 'Flutter · Android · Web'),
                  const SizedBox(height: 32),
                  Text(
                    'Frontend siap dikembangkan',
                    textAlign: TextAlign.center,
                    style: text.headlineLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Satu codebase Flutter untuk Android dan Web. '
                    'Mulai edit lib/main.dart untuk membangun UI-mu.',
                    textAlign: TextAlign.center,
                    style: text.bodyLarge,
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      FilledButton(
                        onPressed: _increment,
                        child: Text('Klik aku: $_count'),
                      ),
                      OutlinedButton(
                        onPressed: () => _showInfo(context),
                        child: const Text('Tentang project'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      final bool isWide = constraints.maxWidth >= 720;
                      final List<Widget> cards = const <Widget>[
                        FeatureCard(
                          icon: Icons.phone_android,
                          title: 'Android',
                          description: 'Target utama: build APK dari satu codebase.',
                        ),
                        FeatureCard(
                          icon: Icons.language,
                          title: 'Web (opsional)',
                          description:
                              'Jalankan di browser dengan flutter run -d chrome.',
                        ),
                        FeatureCard(
                          icon: Icons.palette_outlined,
                          title: 'Material 3',
                          description: 'Tema dark siap pakai di lib/src/theme.dart.',
                        ),
                      ];

                      if (isWide) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (int i = 0; i < cards.length; i++) ...<Widget>[
                              if (i > 0) const SizedBox(width: 16),
                              Expanded(child: cards[i]),
                            ],
                          ],
                        );
                      }

                      return Column(
                        children: <Widget>[
                          for (int i = 0; i < cards.length; i++) ...<Widget>[
                            if (i > 0) const SizedBox(height: 16),
                            cards[i],
                          ],
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showInfo(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: AppTheme.surface,
        title: const Text('Tentang project'),
        content: const Text(
          'Scaffold Flutter dengan Material 3, tema dark, dan struktur lib/src.',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.seed.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppTheme.seed.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Color(0xFF67E8F9),
        ),
      ),
    );
  }
}
