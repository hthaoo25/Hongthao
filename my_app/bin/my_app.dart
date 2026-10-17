class TaiKhoan {
  final String chuTaiKhoan;
  double soDu;
 
  TaiKhoan(this.chuTaiKhoan, {this.soDu = 0});
 
  void napTien(double soTien) {
    soDu += soTien;
    print('$chuTaiKhoan nap $soTien, so du moi: $soDu');
  }
 
  bool rutTien(double soTien) {
    if (soTien > soDu) {
      print('$chuTaiKhoan rut that bai: khong du so du');
      return false;
    }
    soDu -= soTien;
    return true;
  }
 
  @override
  String toString() => 'TaiKhoan($chuTaiKhoan, so du: $soDu)';
}


class TaiKhoanTietKiem extends TaiKhoan {
  final double laiSuatNam;
 
  TaiKhoanTietKiem(super.chuTaiKhoan, this.laiSuatNam, {super.soDu});
 
  void congLaiThang() {
    final tien = soDu * laiSuatNam / 12;
    napTien(tien);
  }
 
  @override
  bool rutTien(double soTien) {
    print('Luu y: rut tu tai khoan tiet kiem co the mat lai suat.');
    return super.rutTien(soTien);
  }
}



void main(List<String> arguments) {
  
    TaiKhoan tk1= new TaiKhoan("Nguyen Van A");
    tk1.napTien(1000000);
    TaiKhoan tk2= new TaiKhoan("Tran Van B");
    tk2.napTien(2000000);

     tk2.rutTien(3000000);
    TaiKhoan tk3= TaiKhoan("Tran Thi C");
    print(tk1.toString());
    print('So tien trong tai khoan 1: ${tk1.soDu}');
    print('So tien trong tai khoan 2: ${tk2.soDu}');
    print(tk3.toString());
  print("------------------");
  TaiKhoan tk4= TaiKhoanTietKiem("Tran Thi E", 0.5);
   tk4.napTien(2000000);
  print(tk4.toString());

  TaiKhoanTietKiem tk5= TaiKhoanTietKiem("Tran Thi E", 0.5);
  tk5.napTien(3000000);
  print(tk5.toString());




}
