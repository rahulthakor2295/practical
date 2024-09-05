import 'package:intl/intl.dart';

dateParse(String? createDate) {
  var formatDate = DateFormat("dd MMM yyyy");
  // var date = DateFormat("yyyy-MM-ddThh:mm:ss").parse(createDate!);
  var date = DateFormat("yyyy-MM-ddTHH:mm:ss.mmm").parse(createDate!);
  return formatDate.format(date);
}
