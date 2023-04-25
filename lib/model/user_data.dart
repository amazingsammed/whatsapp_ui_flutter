import 'account.dart';

List<Profile> User = [
  Profile(
    id: 1234,
    name: 'Kofi',
    image: 'assets/pic2.jpg',
    number: '0543220177',
    about: 'about',
    calls: [],
    status: [Status(image: "me", time: '12:00')],
    message: [
      Message(
          data: "How are you ?",
          time: '12:00',
          byme: true,
          receiver: 'Kofi'),
      Message(
          data: "I am fine",
          time: '12:00',
          byme: false,
          receiver: 'Kofi'),
      Message(
          data: "How are you doing",
          time: '12:00',
          byme: true,
          receiver: 'Kofi'),
      Message(
          data: "I am doing Good",
          time: '12:00',
          byme: false,
          receiver: 'Kofi'),
    ],
  ),
  Profile(
    id: 12345,
    name: 'Alita',
    image: 'assets/alita.jpg',
    number: '0543220177',
    about: 'about',
    calls: [],
  ),
];

Profile MainUser = Profile(
    id: 56,
    name: 'Trust',
    image: 'assets/rio.jpg',
    number: '0543220177',
    about: 'I will lead you to the promise land',
    message: [
      Message(
          data: "How are you doing",
          time: '12:00',
          byme: true,
          receiver: 'Kofi'),
      Message(
          data: "How are you doing",
          time: '12:00',
          byme: true,
          receiver: 'Kofi'),
      Message(
          data: "How are you doing",
          time: '12:00',
          byme: true,
          receiver: 'Kofi'),
      Message(
          data: "How are you doing",
          time: '12:00',
          byme: false,
          receiver: 'Kofi'),
    ],
    calls: [
      Calls(id: 1234, time: "July 21, 7:55 AM"),
      Calls(id: 1234, time: "July 20, 7:55 AM"),
    ]);
