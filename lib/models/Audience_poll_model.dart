import 'dart:convert';
class OpinionPoll {
  final int id;
  final String question;
  final List<String> options;
  final String selection;
  

  OpinionPoll( {
    required this.id,
    required this.question,
     this.options= const [],
    this.selection ="",
    
  });
    OpinionPoll copyWith({
    int? id,
    String? question,
    List<String>? options,
  }) {
    return OpinionPoll(
      id: id ?? this.id,
      question: question ?? this.question,
      options: options ?? this.options,
    );
  }
    Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'question': question,
      'options': options,
    };
  }

   factory OpinionPoll.fromMap(Map<String, dynamic> map) {
   return OpinionPoll(
     id: map['id'] as int,
     question: map['question'] as String,
     options: map['options']! as List<String>,
   );
 }
  String toJson() => json.encode(toMap());
 factory OpinionPoll.fromJson(String source) =>
     OpinionPoll.fromMap(json.decode(source) as Map<String, dynamic>);
 @override
 String toString() {
   return 'OpinionPoll(id: $id, question: $question, options: $options)';
 }
 @override
 bool operator ==(covariant OpinionPoll other) {
   if (identical(this, other)) return true;
 
    return 
      other.id == id &&
      other.question == question &&
      other.options == options ;
 
  }

  @override
  int get hashCode {
    return id.hashCode ^
      question.hashCode ^
      options.hashCode;
  }
}