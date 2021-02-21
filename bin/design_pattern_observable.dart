import 'core/jelmaan/DataBanjir.dart';
import 'core/jelmaan/mnl.dart';
import 'core/jelmaan/wan_aibon.dart';

void main(List<String> arguments) {
  // ignore: omit_local_variable_types
  DataBanjir dataBanjir = DataBanjir();
  // ignore: omit_local_variable_types
  Mnl mnl = Mnl(dataBanjir);

  // ignore: omit_local_variable_types
  WanAibon uedan = WanAibon(dataBanjir);

  dataBanjir.seksiNgaturData(statusSiaga: 'Siaga 3', tinggiAir: 1.5);
  dataBanjir.seksiNgaturData(statusSiaga: 'Siaga 1', tinggiAir: 1.7);
  dataBanjir.seksiNgaturData(statusSiaga: 'Siaga 1', tinggiAir: 2.5);
  uedan.unFollow();
  dataBanjir.seksiNgaturData(statusSiaga: 'Kelelep cuyyy', tinggiAir: 2.6);

  print('Program Selesai');
}
