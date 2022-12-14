import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fortfolio/domain/auth/i_auth_facade.dart';
// import 'package:fortfolio/domain/core/errors.dart';
// import 'package:fortfolio/injection.dart';

// extension FirestorX on FirebaseFirestore {
//   Future<DocumentReference> userDocument() async {
//     final userOption = await getIt<IAuthFacade>().getSignedInUser();
//     final user = userOption.getOrElse(() => throw NotAuthenticatedError());
//     return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
//   }
// }

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference get authUserCollection => collection("authUsers");
  CollectionReference get kycCollection => collection("kyc");
  CollectionReference get investmentCollection => collection("investments");
  CollectionReference get withdrawalCollection => collection("withdrawals");
  CollectionReference get newsCollection => collection("news");
}