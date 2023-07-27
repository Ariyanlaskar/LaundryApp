// ignore_for_file: non_constant_identifier_names

// ignore: duplicate_ignore, camel_case_types
class Detail {
  final String status;
  final String orderId;
  final String Mtshirt;
  final String Ftshirt;
  final String tPrice;
  final String Mshirt;
  final String Fshirt;
  final String SPrice;
  final String Mpants;
  final String Fpants;
  final String PPrice;
  final String Mjeans;
  final String Fjeans;
  final String JPrice;
  final String EDT;

  Detail({
    required this.status,
    required this.orderId,
    required this.Mtshirt,
    required this.tPrice,
    required this.SPrice,
    required this.PPrice,
    required this.JPrice,
    required this.Ftshirt,
    required this.Mshirt,
    required this.Fshirt,
    required this.Mpants,
    required this.Fpants,
    required this.Mjeans,
    required this.Fjeans,
    required this.EDT,
  });

  static List<Detail> getDetails() {
    List<Detail> details = [];

    details.add(Detail(
        status: 'Your Cloths Are Now Washing',
        orderId: '#911',
        Mtshirt: '3',
        Ftshirt: '4',
        Mshirt: '2',
        Fshirt: '2',
        Mpants: '3',
        Fpants: '1',
        Mjeans: '2',
        Fjeans: '1',
        tPrice: '10',
        SPrice: '15',
        PPrice: '20',
        JPrice: '25',
        EDT: '2023.08.19'));
    details.add(Detail(
        status: 'Your Cloths Are Now Ironing',
        orderId: '#1011',
        Mtshirt: '4',
        Ftshirt: '3',
        Mshirt: '2',
        Fshirt: '1',
        Mpants: '3',
        Fpants: '1',
        Mjeans: '2',
        Fjeans: '1',
        tPrice: '10',
        SPrice: '15',
        PPrice: '20',
        JPrice: '25',
        EDT: '2023.08.23'));
    return details;
  }
}
