import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCmzFx5D9clFcefaa6FMqei6DHkuSu2b9g",
        authDomain: "crud-14d47.firebaseapp.com",
        projectId: "crud-14d47",
        storageBucket: "crud-14d47.appspot.com",
        messagingSenderId: "490805783449",
        appId: "1:490805783449:web:a5980f08bbcdd861880108",
        measurementId: "G-7GEV0M32WP",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirestoreDemo(),
    );
  }
}

class FirestoreDemo extends StatefulWidget {
  const FirestoreDemo({super.key});

  @override
  _FirestoreDemoState createState() => _FirestoreDemoState();
}

class _FirestoreDemoState extends State<FirestoreDemo> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _addData() async {
    // Thêm một tài liệu vào bộ sưu tập (collection) "test".
    CollectionReference collection = FirebaseFirestore.instance.collection('test');
    
    try {
      await collection.add({
        'name': _controller.text, // Dữ liệu đơn giản
        'timestamp': FieldValue.serverTimestamp(), // Thêm thời gian hiện tại
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Thêm thành công!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Lỗi: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firestore Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Nhập tên để thêm'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addData,
              child: const Text('Thêm dữ liệu'),
            ),
          ],
        ),
      ),
    );
  }
}
