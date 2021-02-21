import '../topeng/aksi.dart';
import '../topeng/follower.dart';
import 'DataBanjir.dart';

class Mnl implements Follower, Aksi {
  DataBanjir _dataBanjir;

  String _statusSiaga;
  double _tinggiAir;

  Mnl(DataBanjir dataBanjir) {
    _dataBanjir = dataBanjir;
    _dataBanjir.daftarJadiFollower(this);
  }

  @override
  void komentar() {
    print('Hi, ini aku MNL');
    if (_tinggiAir == 1.7) {
      print('No Comment');
    } else if (_tinggiAir > 2.5) {
      print('BLUB BLUB BLUB (tenggelem)');
    } else {
      print('Status siaga: ${_statusSiaga}');
      if (_tinggiAir <= 1.5) {
        print('Waduh udah mulai ga nyantai nih');
      } else {
        print('Ngungsiiiiiii! Tinggi air sudah ${_tinggiAir} meter.');
      }
    }
    print('MNL selesai');
    print('++++++++++++___________________++++++++++++');
  }

  @override
  void update({String statusSiaga, double tinggiAir}) {
    _statusSiaga = statusSiaga;
    _tinggiAir = tinggiAir;
    komentar();
  }
}
