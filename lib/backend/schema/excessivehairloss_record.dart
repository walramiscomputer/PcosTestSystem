import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExcessivehairlossRecord extends FirestoreRecord {
  ExcessivehairlossRecord._(
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
      FirebaseFirestore.instance.collection('excessivehairloss');

  static Stream<ExcessivehairlossRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExcessivehairlossRecord.fromSnapshot(s));

  static Future<ExcessivehairlossRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExcessivehairlossRecord.fromSnapshot(s));

  static ExcessivehairlossRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExcessivehairlossRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExcessivehairlossRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExcessivehairlossRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExcessivehairlossRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExcessivehairlossRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExcessivehairlossRecordData({
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

class ExcessivehairlossRecordDocumentEquality
    implements Equality<ExcessivehairlossRecord> {
  const ExcessivehairlossRecordDocumentEquality();

  @override
  bool equals(ExcessivehairlossRecord? e1, ExcessivehairlossRecord? e2) {
    return e1?.questionid == e2?.questionid &&
        e1?.questiontitle == e2?.questiontitle &&
        e1?.questionlist == e2?.questionlist &&
        e1?.question == e2?.question &&
        e1?.response == e2?.response;
  }

  @override
  int hash(ExcessivehairlossRecord? e) => const ListEquality().hash([
        e?.questionid,
        e?.questiontitle,
        e?.questionlist,
        e?.question,
        e?.response
      ]);

  @override
  bool isValidKey(Object? o) => o is ExcessivehairlossRecord;
}
