import 'package:get/get.dart';

class MyTranslations extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en' : { 'title' : 'Hello World %s'},
    'en_US' : {'title' : 'Hello World from Us %s'},
    'pt' : {'title' : 'Potrtugal'},
    'pt_BR' : {'title' : ' Brazil'}

  };

}