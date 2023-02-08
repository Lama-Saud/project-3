class Address {
  final String location;
  final String locationInfo;

  static final List<Address> addresses = [
    Address(location: 'Home', locationInfo: '2908 Al Manabah, Namae, Riyadh 14962 6252, Saudi Arabia'),
    Address(location: 'Work', locationInfo: '4161 Amr Ibn Alaas St. Al Washam, Ruyadh 12741 9293, Saudi Arabia'),
    Address(
      location: 'Grandma',
      locationInfo: '2373 Safyah Bint Al Khattab, 7452, Ash Shifa, Riyadh 14712, Saudi Arabia',
    ),
    Address(location: 'University', locationInfo: '4161 Amr Ibn Alaas St. Al Washam, Ruyadh 12741 9293, Saudi Arabia'),
    Address(location: 'Tuwaiq', locationInfo: '2908 Al Manabah, Namae, Riyadh 14962 6252, Saudi Arabia.'),
  ];

  Address({
    required this.location,
    required this.locationInfo,
  });
}
