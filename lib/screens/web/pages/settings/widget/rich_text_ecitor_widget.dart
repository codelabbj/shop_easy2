// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart' hide Text;
//
// class RichTextEditor extends StatefulWidget {
//   const RichTextEditor({super.key});
//
//   @override
//   State<RichTextEditor> createState() => _RichTextEditorState();
// }
//
// class _RichTextEditorState extends State<RichTextEditor> {
//   final QuillController _controller = QuillController.basic();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Content Editor")),
//       body: Column(
//         children: [
//           QuillToolbar.simple(
//             controller: _controller,
//             configurations: const QuillSimpleToolbarConfigurations(
//               multiRowsDisplay: false,
//               showDividers: true,
//               showFontFamily: true,
//               showFontSize: true,
//               showBoldButton: true,
//               showItalicButton: true,
//               showUnderLineButton: true,
//               showStrikeThrough: true,
//               showInlineCode: true,
//               showListNumbers: true,
//               showListBullets: true,
//               showListCheck: true,
//               showCodeBlock: true,
//               showQuote: true,
//               showLink: true,
//               showUndo: true,
//               showRedo: true,
//               showDirection: true,
//               showAlignmentButtons: true,
//               showImageButton: true,
//               showVideoButton: true,
//             ),
//           ),
//           Expanded(
//             child: QuillEditor.basic(
//               controller: _controller,
//               configurations: const QuillEditorConfigurations(
//                 readOnly: false,
//                 expands: true,
//                 padding: EdgeInsets.all(16),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
