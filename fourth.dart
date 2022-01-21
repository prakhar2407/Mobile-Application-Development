void main() {
  int x;
  x = 10000000;
  print(x.runtimeType);
  print(x.runtimeType.runtimeType);  
  double r = 10.20;
  print(r.runtimeType);
  print(r.runtimeType.runtimeType);
  int b = r.toInt();
  print(b);
  print(b.runtimeType);
  int z = int.parse("123");
  print(z);
  int y = int.parse("1000", radix: 2);
  print(y);
  bool isAtt = true;
  String name = "Prakhar";
}