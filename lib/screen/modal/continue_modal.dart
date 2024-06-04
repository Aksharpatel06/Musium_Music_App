class ContinueModal{
  String img;
  String name;

  ContinueModal({required this.img,required this.name});

  factory ContinueModal.setdata(Map m1)
  {
    return ContinueModal(img: m1['img'], name: m1['name']);
  }
}