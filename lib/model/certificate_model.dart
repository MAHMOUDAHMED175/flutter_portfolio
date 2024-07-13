class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final List<String> image;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.image,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Store App GraphQl,Bloc,Freezed & Cean Architecture',
    organization: 'Udemy',
    date: 'June 26,2024',
    skills: 'Flutter . Dart',
        image: ['assets/images/certeficats (1).jpg'],

  ),
  CertificateModel(
    name: 'The Java Learning Guide',
    organization: 'Udemy',
    date: 'Nov 28,2024',
    skills: 'Flutter . Dart',
        image: [ 'assets/images/certeficats (2).jpg'],

  ),
  CertificateModel(
    name: 'Futter Clean Architecture[2022][Flutter3][In Arabic]',
    organization: 'Udemy',
    date: 'March 24,2023',
    skills: 'Flutter . Dart',
    image:  ['assets/images/certeficats (3).jpg'],
  ),
  CertificateModel(
    name: 'The Complete 2022 Flutter & Dart Development Course [Arabic]',
    organization: 'Udemy',
    date: 'Oct 3,2022',
    skills: 'Flutter . Dart',
    image:  ['assets/images/certeficats (4).jpg'],
  ),
  CertificateModel(
    name: 'Flutter Payment Integration:Stripe, PayPal & More [Arabic]',
    organization: 'Udemy',
    date: 'Feb 7,2024',
    skills: 'Flutter . Dart',
    image: [ 'assets/images/certeficats (5).jpg'],
  ),
  CertificateModel(
    name: 'Deep Dive Into Clean Architecture in Flutter [Arabic]',
    organization: 'Udemy',
    date: 'Aug 22,2023',
    skills: 'Flutter . Dart',
    image: ['assets/images/certeficats (6).jpg'],
  ),
  CertificateModel(
    name: 'Flutter Advanced Course Bloc And MVVM Pattern [Arabic][2023]',
    organization: 'Udemy',
    date: 'April 2,2023',
    skills: 'Flutter . Dart',
    image: [ 'assets/images/certeficats (7).jpg'],
  ),
  CertificateModel(
    name: 'Mobile Development Inten',
    organization: 'Suadia arabian (Ocean Tech) ',
    date: '3 jun 2023',
    skills: 'Flutter . Dart',
      image: [ 'assets/images/certificat.png'],
),
  CertificateModel(
    name: 'Mobile Development Inten',
    organization: 'Inde (The Sparks Foundation)',
    date: 'Apr 2023',
    skills: 'Flutter . Dart',
    image: [ 'assets/images/certificats.png'],
  ),
  CertificateModel(
    name: 'Ui Ux Course',
    organization: 'GDSC',
    date: 'Dec 2022',
    skills: 'desgin',
    image: [ ''],
  ),
  CertificateModel(
    name: 'flutter dart Course',
    organization: 'GDSC',
    date: 'Dec 2022',
    skills: 'flutter,dart',
    image: [ ''],
  ),
  CertificateModel(
    name: 'English Course',
    organization: 'Harvard Center Helwan',
    date: 'jun 2021',
    skills: 'speak,listening.....',
    image: [ ''],
  ),
  CertificateModel(
    name: 'Volunteered as a flutter developer',
    organization: 'IEEE Foundation',
    date: 'jun 2020',
    skills: 'soft skills.....',
    image: [''],
  ),







];
