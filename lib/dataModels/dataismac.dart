class DataCardISMAC {
  final int pos;
  final String name, desc, iconimg;
  final List<String> images;

  DataCardISMAC({this.pos, this.name, this.desc, this.iconimg, this.images});
}

List<DataCardISMAC> ismac = [
  DataCardISMAC(
      pos: 1,
      name: 'Infrastructure',
      iconimg: 'assets/ismacPng/i.png',
      desc:
          'Combining extensive real-time domain knowledge to deliver IT Infrastructure solutions across various technological spaces.'),
  DataCardISMAC(
      pos: 2,
      name: 'Security',
      iconimg: 'assets/ismacPng/s.png',
      desc:
          'Meeting complex security needs resulting from disruptive technologies such as big data, cloud, social and mobile using our global experience.'),
  DataCardISMAC(
      pos: 3,
      name: 'Mobility',
      iconimg: 'assets/ismacPng/m.png',
      desc:
          'Implementing a mobile organization calls for a robust enterprise mobile strategy and consulting partner, to build a roadmap for your future-ready mobile enterprise.'),
  DataCardISMAC(
      pos: 4,
      name: 'Analytics',
      iconimg: 'assets/ismacPng/a.png',
      desc:
          'It helps to present immense opportunities when the data is leveraged at its most optimal level, thereby staying ahead in the competitive market.'),
  DataCardISMAC(
      pos: 5,
      name: 'Cloud',
      iconimg: 'assets/ismacPng/c.png',
      desc:
          'With enterprises moving towards delivering IT as a service, Cloud has become essential. Enterprises that are looking to become more swift and responsive to the changing market landscape are turning to the Cloud.'),
];
