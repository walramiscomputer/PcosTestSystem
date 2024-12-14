import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodsanddietRecord extends FirestoreRecord {
  FoodsanddietRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "questionid" field.
  int? _questionid;
  int get questionid => _questionid ?? 0;
  bool hasQuestionid() => _questionid != null;

  // "questiontitle" field.
  String? _questiontitle;
  String get questiontitle => _questiontitle ?? '';
  bool hasQuestiontitle() => _questiontitle != null;

  // "questionlist" field.
  String? _questionlist;
  String get questionlist => _questionlist ?? '';
  bool hasQuestionlist() => _questionlist != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "response" field.
  double? _response;
  double get response => _response ?? 0.0;
  bool hasResponse() => _response != null;

  void _initializeFields() {
    _questionid = castToType<int>(snapshotData['questionid']);
    _questiontitle = snapshotData['questiontitle'] as String?;
    _questionlist = snapshotData['questionlist'] as String?;
    _question = snapshotData['question'] as String?;
    _response = castToType<double>(snapshotData['response']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodsanddiet');

  static Stream<FoodsanddietRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodsanddietRecord.fromSnapshot(s));

  static Future<FoodsanddietRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodsanddietRecord.fromSnapshot(s));

  static FoodsanddietRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodsanddietRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodsanddietRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodsanddietRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodsanddietRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodsanddietRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodsanddietRecordData({
  int? questionid,
  String? questiontitle,
  String? questionlist,
  String? question,
  double? response,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'questionid': questionid,
      'questiontitle': questiontitle,
      'questionlist': questionlist,
      'question': question,
      'response': response,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodsanddietRecordDocumentEquality
    implements Equality<FoodsanddietRecord> {
  const FoodsanddietRecordDocumentEquality();

  @override
  bool equals(FoodsanddietRecord? e1, FoodsanddietRecord? e2) {
    return e1?.questionid == e2?.questionid &&
        e1?.questiontitle == e2?.questiontitle &&
        e1?.questionlist == e2?.questionlist &&
        e1?.question == e2?.question &&
        e1?.response == e2?.response;
  }

  @override
  int hash(FoodsanddietRecord? e) => const ListEquality().hash([
        e?.questionid,
        e?.questiontitle,
        e?.questionlist,
        e?.question,
        e?.response
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodsanddietRecord;
}
