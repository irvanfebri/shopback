import 'package:flutter_shop/common/entities/entities.dart';


abstract class ProfileEvents{
  const ProfileEvents();
}

class TriggerProfileName extends ProfileEvents{
  final UserItem userProfile;
  const TriggerProfileName(this.userProfile);
}