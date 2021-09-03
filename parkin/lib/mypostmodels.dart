class Mypostdetail {
  final String title;
  final String category;
  final String discription;
  final String time;
  final int likes;

  const Mypostdetail(
      {required this.category,
      required this.discription,
      required this.title,
      required this.time,
      required this.likes});
}

const myposts = <Mypostdetail>[
  Mypostdetail(
      category: 'intership',
      discription: 'hi iam Ankit',
      title:
          'bhai ki internship bala bala bala bala bala bala bala bala bala bala bala bala bala bala bala bala bala bala',
      time: 'now',
      likes: 200),
  Mypostdetail(
      category: 'intership',
      discription: 'hi iam Ankit',
      title: 'bhai ki internship',
      time: 'now',
      likes: 2),
  Mypostdetail(
      category: 'intership',
      discription: 'hi iam Ankit',
      title: 'bhai ki internship',
      time: 'now',
      likes: 2),
  Mypostdetail(
      category: 'intership',
      discription: 'hi iam Ankit',
      title: 'bhai ki internship',
      time: 'now',
      likes: 2),
];
