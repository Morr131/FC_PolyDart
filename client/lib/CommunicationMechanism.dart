/// CommunicationMechanism.dart
/// Version 0.0.1a
/// Copyright 2015 Pioneer Valley Gamer Collective

/// CommunicationMechanism
/// This class is used to create different kinds of CommunicationMechanism objects and
/// methods for accessing CommunicationMechanism objects.
class CommunicationMechanism{
  int _id;

  /// Returns the int [id] of [this].
  int getid(){
    return this._id;
  }

  /// Returns a list of [Party] ids which are associated with [this]
  ///
<<<<<<< HEAD
  /// @param name Placeholder for parameter name.
  /// @returns A list of Party objects.
  List<int> getPartyAssociations(){
=======
  /// Generates a [List<int>] of [Party] ids from [Party_Communication_Association] where
  ///   party_id references [this], or an empty [List<int>] if no associations exist.
  List<Party> getPartyAssociations(){
>>>>>>> Updated some comments to new format.
    //TODO: Implement getPartyAssociations in CommunicationMechanism
    List<int> people = new List<int>();
    return people;
  }

  /// addPartyAssociation creates a party association.
  ///
  /// @param name Placeholder for parameter name.
  void addPartyAssociation(){
    //TODO: Implement addPartyAssociations in CommunicationMechanism
  }

  /// addPartyAssociation removes a party association.
  ///
  /// @param name Placeholder for parameter name.
  void endPartyAssociation(){
    //TODO: Implement endPartyAssociations in CommunicationMechanism
  }

  /// getFacilityAssociations returns a list of facility associations.
  ///
  /// @param name Placeholder for parameter name.
  /// @returns A list of Facility objects.
  List<Facility> getFacilityAssociation() {
    //TODO: Implement getFacilityAssociation in CommunicationMechanism
    List<Facility> people = new List<Facility>();
    return people;
  }

  /// addFacilityAssociation creates a facility association.
  ///
  /// @param name Placeholder for parameter name.
  void addFacilityAssociation() {
    //TODO: Implement addFacilityAssociation in CommunicationMechanism
  }

  /// endFacilityAssociation removes a facility association.
  ///
  /// @param name Placeholder for parameter name.
  void endFacilityAssociation() {
    //TODO: Implement endFacilityAssociation in CommunicationMechanism
  }
}

/// Address
/// This class is used to create Address objects and methods for accessing Address objects.
class Address extends CommunicationMechanism{
  int _id;

  /// getid returns this address' ID.
  ///
  /// @returns The ID number of this address.
  int getid() {
    return this._id;
  }

  /// getAddress returns the address in string form.
  ///
  /// @param name Placeholder for parameter name.
  /// @returns An address string.
  String getAddress() {
    //TODO: Implement getAddress in CommunicationMechanism
    String people = new String();
    return people;
  }

  /// getFullAddress returns a list of addresses.
  ///
  /// @param name Placeholder for parameter name.
  /// @returns A list of address strings.
  List<String> getFullAddress() {
    //TODO: Implement getFullAddress in CommunicationMechanism
    List<String> people = new List<String>();
    return people;
  }
}

/// Email_Address
/// This class is used to create Email_Address objects and methods for accessing Email_Address objects.
class Email_Address extends CommunicationMechanism {
  int _id;

  /// getid returns this e-mail address' ID.
  ///
  /// @returns The ID number of this e-mail address.
  int getid(){
    return this._id;
  }

  /// getEmail returns the e-mail in string form.
  ///
  /// @param name Placeholder for parameter name.
  /// @returns An e-mail string.
  String getEMail() {
    //TODO: Implement getEMail in CommunicationMechanism
    String people = new String();
    return people;
  }
}

/// Phone_Number
/// This class is used to create Phone_Number objects and methods for accessing Phone_Number objects.
class Phone_Number extends CommunicationMechanism {
  int _id;

  /// getid returns this phone number's ID.
  ///
  /// @returns The ID number of this phone number.
  int getid() {
    return this._id;
  }

  /// getPhoneNumber returns the phone number in string form.
  ///
  /// @param name Placeholder for parameter name.
  /// @returns An e-mail string.
  String getPhoneNumber() {
    //TODO: Implement getPhoneNumber in CommunicationMechanism
    String people = new String();
    return people;
  }
}