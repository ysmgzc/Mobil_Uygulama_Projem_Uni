class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}
//anasayfada gördüğümüz en üst kısımdaki ikon şeklinde gömlek pantol vs.
List<Category> demo_categories = [
  Category(
    icon: "assets/icons/dress.svg",
    title: "Elbise",
  ),
  Category(
    icon: "assets/icons/shirt.svg",
    title: "Gömlek",
  ),
  Category(
    icon: "assets/icons/pants.svg",
    title: "Pantolon",
  ),
  Category(
    icon: "assets/icons/Tshirt.svg",
    title: "Tişört",
  ),
];
