class Lingkaran{
  late double phi;
  late double r1;
  late double r2;
  void setPhi(double value){
    if(value < 0){
      value *= -1; 
    }
    phi = value;
  }
  double getPhi(){
    return phi;
  }

  void setR1 (double value){
    if(value < 0){
      value *= -1;
    }
    r1 = value;
  }
  double getR1(){
    return r1;
  }
  void setR2 (double value){
    if(value < 0){
      value *= -1;
    }
    r2 = value;
  }
  double getR2(){
    return r2;
  }

  double hitungLuas(){
    return this.phi * this.r1 * this.r2;
  }
}