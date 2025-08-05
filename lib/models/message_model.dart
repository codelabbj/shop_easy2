class Message {
  final String content;
  final bool isMe;
  final DateTime time;
  final String? imageUrl;
  final String? senderName;
  final String? senderAvatar;

  Message({
    required this.content,
    required this.isMe,
    required this.time,
    this.imageUrl,
    this.senderName,
    this.senderAvatar,
  });
}
