class Odeme{

  final int id;
  final int ogrenciId;
  final String ay;
  final String beklenenTarih;
  final String odenenTarih;
  final String onaylayan;
  final String onaylananTarih;
  final bool onaylandiMi;

  Odeme({this.id, this.ogrenciId, this.ay, this.beklenenTarih, this.odenenTarih, this.onaylananTarih, this.onaylayan, this.onaylandiMi});
}

List<Odeme> odemeData = [
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Ocak',
    beklenenTarih: '2018-02-20',
    odenenTarih: '2018-02-21',
    onaylananTarih: '2018-02-23',
    onaylandiMi: true,
    onaylayan: 'Ali Veli'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Şubat',
    beklenenTarih: '2018-03-20',
    odenenTarih: '2018-03-21',
    onaylananTarih: '2018-03-22',
    onaylandiMi: true,
    onaylayan: 'Ali Veli'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Mart',
    beklenenTarih: '2018-02-20',
    odenenTarih: '2018-02-21',
    onaylananTarih: '2018-02-23',
    onaylandiMi: true,
    onaylayan: 'Ali Veli'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Nisan',
    beklenenTarih: '2018-04-20',
    odenenTarih: '2018-04-21',
    onaylananTarih: '2018-04-25',
    onaylandiMi: true,
    onaylayan: 'Ali Veli'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Mayıs',
    beklenenTarih: '2018-05-20',
    odenenTarih: '-',
    onaylananTarih: '-',
    onaylandiMi: false,
    onaylayan: '-'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Haziran',
    beklenenTarih: '2018-06-20',
    odenenTarih: '2018-06-21',
    onaylananTarih: '-',
    onaylandiMi: false,
    onaylayan: '-'
  ),
  Odeme(
    id: 1,
    ogrenciId: 1,
    ay: 'Temmuz',
    beklenenTarih: '2018-06-20',
    odenenTarih: '-',
    onaylananTarih: '-',
    onaylandiMi: false,
    onaylayan: '-'
  ),
];