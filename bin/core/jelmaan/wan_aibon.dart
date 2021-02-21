import '../topeng/aksi.dart';
import '../topeng/follower.dart';
import 'DataBanjir.dart';

class WanAibon implements Follower, Aksi {
  DataBanjir _dataBanjir;
  String _statusSiaga;
  double _tinggiAir;

  WanAibon(DataBanjir dataBanjir) {
    _dataBanjir = dataBanjir;
    _dataBanjir.daftarJadiFollower(this);
  }

  @override
  void komentar() {
    print('Hi, aku Wan Aibon');
    print('Oooohhh status siaga: ${_statusSiaga}, alhamdulillah.');

    if (_tinggiAir <= 1.5) {
      print('Lihatlah kerjaku, tidak banjir kan Cipinang Melayu (Sombong).');
    } else if (_tinggiAir > 1.5 && _tinggiAir < 2) {
      print(
          'Ini air dari HULU, di kirim kesini tanpa ijin, dan kita yang menanggung banjir. Tapi alhamdulillah.');
    } else {
      print(
          'Waduh aku pun ngungsi lah, bilangnya aku sakit covid aja deh biar ga ada yg hubungi. alhamdulillah.');
      print('Wan Aibon Unfollow Data Banjir, serahin ke WaGub lapan anam.');
    }

    print('Wan Aibon selesai dan melet2 bibir');
    print('++++++++++++___________________++++++++++++');
  }

  @override
  void update({String statusSiaga, double tinggiAir}) {
    _statusSiaga = statusSiaga;
    _tinggiAir = tinggiAir;
    komentar();
  }

  void unFollow() => _dataBanjir.berhentiJadiFollower(this);
}
