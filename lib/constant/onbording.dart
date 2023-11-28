class OnbordingItem {
  String iamge;
  String title;
  String discreption;
  OnbordingItem({
    required this.iamge,
    required this.title,
    required this.discreption,
  });
}

final List<OnbordingItem> onbordingList = [
  OnbordingItem(
    iamge: "assets/images/undraw_browsing_online_re_umsa.png",
    title: 'تصفح العقارات',
    discreption:
        'يمكنك الآن تصفح الكثير من\nالعقارات دون الاضطرار\nلزيارة مكتب',
  ),
  OnbordingItem(
    iamge: "assets/images/undraw_voice_control_ofo1.png",
    title: 'مكتبك الخاص',
    discreption: 'يمكنك الآن إنشاء مكتبك\nالخاص دون التقيد بمكان',
  ),
  OnbordingItem(
    iamge: "assets/images/undraw_location_tracking_re_n3ok.png",
    title: 'الموقع المناسب',
    discreption: 'يمكنك إدراج موقع عقارك\nبالإضافة إلى كثير من المعلومات',
  ),
  OnbordingItem(
    iamge: "assets/images/undraw_road_to_knowledge_m8s0.png",
    title: 'وسع آفاقك',
    discreption:
        'يمكنك الآن تعلم الكثير عن القوانين\nو المعاملات التي تخص العقارات',
  ),
];
