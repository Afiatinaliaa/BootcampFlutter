List range(int startNum, int endNum) {
  List result = [];
  
  for (int i = startNum; i <= endNum; i+= 1) {
    result.add(i);
  }

  return result;
}

void main() {
  print(range(1, 10)); 
  print(range(11, 18)); 
}