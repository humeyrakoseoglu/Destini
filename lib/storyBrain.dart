import 'package:destini/story.dart';

class StoryBrain {
  int _storyNo = 0;
  final List<Story> _storyData = [
    Story(
        storyTitle:
            "Melih Bey Takımının en küçük üyesi ve Adnan Ziyagil'in genç eşi Bihter Ziyagilsin. Yalı’da kahveni yudumlayıp dernek işleriyle ilgilenirken eşinin yeğeni Behlül ısrarla sana mantı yeme teklifinde bulunuyor.",
        choice1:
            "Aman ne olacak bana da bir değişiklik olur hem diyip Behlül’ün teklifini kabul et.",
        choice2: "Kafanı bulandırmasından hoşlanmadığın için reddet."),
    Story(
        storyTitle:
            "Adnan seni aradı akşama yemeğe kardeşi Arsen Hanım’ın geleceğini söyledi. Behlül ile nişanlısı Elif’in arasını düzeltmek istediğin için araya zaman girmeden durumu düzeltmek üzere Behlül’ün teklifini kabul edip ona Elif ile ilgili yol göstermeyi planlıyorsun.",
        choice1: "Elif'le barıştırmak için Behlül’ün teklifini kabul et.",
        choice2:
            "İlişkilerine burnunu sokmaman gerektiğine karar verip vazgeç."),
    Story(
        storyTitle:
            "Mantıcıya gittiniz. Güzel geçen bugün sonrasında devamlı sana ilgisini belli eden Behlül’ün adeta bambaşka bir yüzünü görüyorsun ve içinde tutmaya çalıştığın hislere artık karşı koymakta çok zorlanıyorsun.",
        choice1:
            "Firdevs Yöreoğlu’nın kızı ol. Kalbinin sesini dinle Behlül’ün hislerine karşılık ver.",
        choice2:
            "Melih Yöreoğlu’nun kızı ol. Geçici hislere daha da kapılmadan Behlül’ü net bir şekilde reddet."),
    Story(
        storyTitle:
            "Akşam tüm aile çok keyifli vakit geçiriyorsunuz. Sen ailene sahip çıkman gerektiğini ve asıl böyle mutlu olacağını farkına varıyorsun. Sen, kocan ve üvey çocukların hayatınız boyunca hep beraber mutlu bir şekilde yaşıyorsunuz. Behlül ise hala bir orda bir burda uslanmadan serserilik peşinde. ",
        choice1: 'Başa Dön',
        choice2: ''),
    Story(
        storyTitle:
            "Adnan, üvey oğlun Bülent ve drama queen üvey kızın Nihal ile huzurlu bir aile hayatı yaşadın. Hep hayallerinde olduğu gibi. Bülent iyi bir basketbolcu oldu şu an NBA’de. Nihal ise ünlü bir piyanist oldu dünya turnesinde. Adnan ve sen ise koy koy geze geze yat turu yapıyorsunuz.",
        choice1: 'Başa Dön',
        choice2: ''),
    Story(
        storyTitle:
            "Yasak aşk başlıyor. Ne kadar ben babamın kızıyım desen de kızı olmaktan utandığın Firdevs Yöreoğlu’nun kızı olduğunu kabul ediyorsun. Firdevs'in dediği gibi “Heyecan her yaşta güzel bir şeydir, ama her durumda sonu güzel bitmez.”. Sen de 27 yaşında Behlül’ün üvey kızın Nihal ile evlendiği gün canına kıyıyorsun.",
        choice1: 'Başa Dön',
        choice2: '')
  ];

  StoryBrain();

  String? getStory() {
    return _storyData[_storyNo].storyTitle;
  }

  String? getChoice1() {
    return _storyData[_storyNo].choice1;
  }

  String? getChoice2() {
    return _storyData[_storyNo].choice2;
  }

  void nextStory(int choiceNo) {
    if (choiceNo == 1 && _storyNo == 0) {
      _storyNo = 2;
    } else if (choiceNo == 2 && _storyNo == 0) {
      _storyNo = 1;
    } else if (choiceNo == 1 && _storyNo == 1) {
      _storyNo = 2;
    } else if (choiceNo == 2 && _storyNo == 1) {
      _storyNo = 3;
    } else if (choiceNo == 1 && _storyNo == 2) {
      _storyNo = 5;
    } else if (choiceNo == 2 && _storyNo == 2) {
      _storyNo = 4;
    } else if (_storyNo == 3 || _storyNo == 4 || _storyNo == 5) {
      restart();
    }
  }

  void restart() {
    _storyNo = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNo == 0 || _storyNo == 1 || _storyNo == 2) {
      return true;
    } else {
      return false;
    }
  }
}
