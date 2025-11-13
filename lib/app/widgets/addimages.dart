import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:file_picker/file_picker.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔑 Khởi tạo Supabase
  await Supabase.initialize(
    url: 'https://jevxtdadqyjnlfszekjo.supabase.co', // 🔹 Thay bằng URL của bạn
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Impldnh0ZGFkcXlqbmxmc3pla2pvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjIwNDk1NzcsImV4cCI6MjA3NzYyNTU3N30.3mBtuJltX2s1J_iM_rFsZLRBSMK525zNzkbMlMnoaUE',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UploadImagePage(),
    );
  }
}

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  final supabase = Supabase.instance.client;
  bool isLoading = false;
  String? imageUrl;

  Future<void> uploadImage() async {
    // 📁 Chọn file ảnh từ máy tính (Web, Windows, v.v.)
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      withData: true,
    );

    if (result == null || result.files.single.bytes == null) return;

    setState(() => isLoading = true);

    try {
      final bytes = result.files.single.bytes!;
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();

      // 🟢 Upload ảnh lên bucket "images"
      await supabase.storage.from('images').uploadBinary(
        fileName,
        bytes,
        fileOptions: const FileOptions(contentType: 'image/png'),
      );

      // 🔗 Lấy link công khai
      final url = supabase.storage.from('images').getPublicUrl(fileName);

      setState(() {
        imageUrl = url;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('✅ Upload thành công!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Lỗi: $e')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload ảnh lên Supabase"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl!, height: 250),
                )
              else
                const Icon(Icons.image, size: 120, color: Colors.grey),

              const SizedBox(height: 20),

              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 14),
                      ),
                      onPressed: uploadImage,
                      icon: const Icon(Icons.upload),
                      label: const Text(
                        "Chọn ảnh để tải lên",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

              const SizedBox(height: 20),

              if (imageUrl != null)
                Column(
                  children: [
                    const Text("Link ảnh:"),
                    SelectableText(
                      imageUrl!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
