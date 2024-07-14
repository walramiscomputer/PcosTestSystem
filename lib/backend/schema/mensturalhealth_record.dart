import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensturalhealthRecord extends FirestoreRecord {
  MensturalhealthRecord._(
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
      FirebaseFirestore.instance.collection('mensturalhealth');

  static Stream<MensturalhealthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MensturalhealthRecord.fromSnapshot(s));

  static Future<MensturalhealthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MensturalhealthRecord.fromSnapshot(s));

  static MensturalhealthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MensturalhealthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MensturalhealthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MensturalhealthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MensturalhealthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MensturalhealthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMensturalhealthRecordData({
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

class MensturalhealthRecordDocumentEquality
    implements Equality<MensturalhealthRecord> {
  const MensturalhealthRecordDocumentEquality();

  @override
  bool equals(MensturalhealthRecord? e1, MensturalhealthRecord? e2) {
    return e1?.questionid == e2?.questionid &&
        e1?.questiontitle == e2?.questiontitle &&
        e1?.questionlist == e2?.questionlist &&
        e1?.question == e2?.question &&
        e1?.response == e2?.response;
  }

  @override
  int hash(MensturalhealthRecord? e) => const ListEquality().hash([
        e?.questionid,
        e?.questiontitle,
        e?.questionlist,
        e?.question,
        e?.response
      ]);

  @override
  bool isValidKey(Object? o) => o is MensturalhealthRecord;
}
