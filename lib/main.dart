import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the basic app structure and theme.
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo, 
        fontFamily: 'Arial',
      ),
      home: const PortfolioPage(),
    );
  }
}

// PortfolioPage is the main screen that shows all the content.
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar is the top bar of the screen.
      appBar: AppBar(
        title: const Text('My Personal Portfolio'),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),

      // Container gives background color to the whole body.
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        // SingleChildScrollView lets the page scroll if content is long.
        child: SingleChildScrollView(
          child: Padding(
            // Padding adds space around the content.
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // Column arranges widgets from top to bottom.
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Profile picture using CircleAvatar
                const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.indigo,
                backgroundImage: AssetImage('assets/piconadaImage.jpg'),
              ),

                const SizedBox(height: 12), 

                const Text(
                  'Shaun Mikael R. Piconada', 
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  'BS Information Technology - Student',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),

                const SizedBox(height: 20),

                // Card containing the "About Me" section
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I am a passionate IT student who loves learning '
                          'new technologies, buying new technologies, '
                          'and using my camera. I aim to be a '
                          'successful IT professional someday.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Card containing the "Skills" section
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // ListView is used here to list down skills.
                        // shrinkWrap + NeverScrollableScrollPhysics lets it
                        // fit inside the Column without scrolling issues.
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            Text('• Flutter & Dart Basics'),
                            SizedBox(height: 4),
                            Text('• Kotlin - Android App Development'),
                            SizedBox(height: 4),
                            Text('• Front End Design (HTML, CSS, JavaScript)'),
                            SizedBox(height: 4),
                            Text('• Figma - UI/UX Design'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // GestureDetector wraps our "Click Me" button.
                // It detects different kinds of touch gestures.
                GestureDetector(
                  // Single tap - prints the exam date
                  onTap: () {
                    print('Examination Date: September 8, 2026');
                  },

                  // Double tap - prints the professor's name
                  onDoubleTap: () {
                    print('Professor Name: Prof. Sairene Pregonero');
                  },

                  // Long press - prints the student's name
                  onLongPress: () {
                    print('Student Name: Shaun Mikael R. Piconada');
                  },

                  // Container is styled to look like a button.
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Simple instruction text the gesture actions
                Text(
                  'Tap, double tap, or long press the button above.\n'
                  'Check the Debug Console for the output.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}