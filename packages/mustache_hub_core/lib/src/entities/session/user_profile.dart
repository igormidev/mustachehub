// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserProfile {
  final String id;
  final String name;
  final String email;
  final String? urlDisplayImage;
  final bool isEmailVerified;
  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.urlDisplayImage,
    required this.isEmailVerified,
  });

  UserProfile copyWith({
    String? id,
    String? name,
    String? email,
    String? urlDisplayImage,
    bool? isEmailVerified,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      urlDisplayImage: urlDisplayImage ?? this.urlDisplayImage,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
    );
  }
}
