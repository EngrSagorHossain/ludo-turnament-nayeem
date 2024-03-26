const String kDomain = "http://10.0.2.2:8000";
const String basUrl = "$kDomain/api";
const String kPackageList = "$basUrl/pack-id-category";
String kCategory({required int packId}) => "$basUrl/pack-id-category/$packId";
String kSubCategory({required int catId}) =>
    "$basUrl/category-id-subcategory/$catId";
String kExamList({required int subCatId}) =>
    "$basUrl/subcategory-id-exam/$subCatId";
String kMcqList({required int examId}) => "$basUrl/exam-id-mcq/$examId";
const String kRegister = "$basUrl/register";
const String kLogin = "$basUrl/login";
const String kLogout = "$basUrl/logout";
const String kUpdateProfile = "$basUrl/profile-update";

//Tournament Related
const String kTournamentRegister = "$basUrl/tournament-register";
