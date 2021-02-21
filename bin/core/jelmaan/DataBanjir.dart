import '../topeng/follower.dart';
import '../topeng/subject.dart';

class DataBanjir implements Subject {
  List<Follower> _followers;
  String _statusSiaga;
  double _tinggiAir;

  DataBanjir() {
    _followers = [];
  }

  @override
  void daftarJadiFollower(Follower f) {
    _followers.add(f);
  }

  @override
  void berhentiJadiFollower(Follower f) {
    _followers.remove(f);
  }

  @override
  void kasiTauKeSemuaFollower() {
    // ignore: omit_local_variable_types
    for (Follower polo in _followers) {
      polo.update(statusSiaga: _statusSiaga, tinggiAir: _tinggiAir);
    }
  }

  void seksiNgaturData({String statusSiaga, double tinggiAir}) {
    _statusSiaga = statusSiaga;
    _tinggiAir = tinggiAir;
    kasiTauKeSemuaFollower();
  }
}
