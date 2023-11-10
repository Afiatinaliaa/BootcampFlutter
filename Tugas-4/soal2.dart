List _rangeWithStep(int startNum, int endNum, [int step = 1] ) {
  List result = [];
  
  if(step > 0){
    for (int i = startNum; i <= endNum; i += step) {
    result.add(i);
    }
  }else if (step < 0){
    for (int i = startNum; i >= endNum; i += step) {
    result.add(i);
    }
  }else {
    throw ArgumentError("Step should be a non-zero value");
  }
  return result;
  }

void main() {
  print(_rangeWithStep(1, 10, 2)); 
  print(_rangeWithStep(11, 23, 3));
  print(_rangeWithStep(5, 2, -1));
}
