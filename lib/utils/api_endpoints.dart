const String kDomain = "https://medigem.sheikhit.net";
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

const String kAllPackageList = "$basUrl/all-package-list";
const String kMakePayment = "$basUrl/make-payment";
const String kPurchasedPackageList = "$basUrl/mypackage-list";
const String kPurchasedPackageListIds = "$basUrl/mypackage-list-id";
const String kMyPaymentHistory = "$basUrl/my-payments";

//default value
const kFreeLiveExamList = '$basUrl/subcategory-id-exam/41';
const kPreviousFreeLiveExamList = '$basUrl/subcategory-id-exam/42';
const kDailyQuiz = '$basUrl/subcategory-id-exam/39';
const kPreviousDailyQuiz = '$basUrl/subcategory-id-exam/40';
