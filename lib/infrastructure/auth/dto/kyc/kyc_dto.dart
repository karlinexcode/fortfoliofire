
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_dto.freezed.dart';
part 'kyc_dto.g.dart';

@freezed
abstract class KYCItemDTO implements _$KYCItemDTO {
  const KYCItemDTO._();
  const factory KYCItemDTO({
    required String fullName,
    required String id,
    required String documentType,
    required List<Map<String, dynamic>> documents,
    required DateTime submitted,
    required String status,
    String? rejectionReason,
  }) = _KYCItemDTO;

  factory KYCItemDTO.fromDomain(KYCItem kycItem) {
    return KYCItemDTO(
      fullName: kycItem.fullName,
    id: kycItem.id,
    documentType: kycItem.documentType,
    documents: kycItem.documents,
    submitted: kycItem.submitted,
    status: kycItem.status,
    rejectionReason: kycItem.rejectionReason,
    );
  }

  factory KYCItemDTO.empty() =>
      KYCItemDTO.fromDomain(KYCItem.empty());

  factory KYCItemDTO.fromJson(Map<String, dynamic> json) =>
      _$KYCItemDTOFromJson(json);
  
  factory KYCItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        KYCItemDTO.empty().toJson();
    return KYCItemDTO.fromJson(docdata);
  }
}

extension KYCItemDTOX on KYCItemDTO {
  KYCItem toDomain() {
    return KYCItem(
      fullName: fullName,
    id: id,
    documentType: documentType,
    documents: documents,
    submitted: submitted,
    status: status,
    rejectionReason: rejectionReason,
    );
  }
}