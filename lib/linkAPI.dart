class AppLinks{

  static const String server="http://10.0.2.2/E_Commerce";
  static const String test="$server/test.php";

  static const String imagestatic="$server/upload";
  // ======================images============================
  static const String imagecategories="$imagestatic/categories";
  static const String imageitem="$imagestatic/item";
  // ======================================================
 
  // //****************Auth***************** */
  // static const String signup="$server/Delivery/Auth/signUp.php";
  static const String verfycode="$server/Delivery/Auth/verfiycode.php";
  static const String login="$server/Delivery/Auth/login.php";
  static const String resendVerfycode="$server/Delivery/Auth/Resend.php";

  /////////////////forget password//////////////////////
  static const String chechemail="$server/Delivery/ForgetPassword/checkEmail.php";
  static const String verfiycodeforgetpass="$server/Delivery/ForgetPassword/verfycode.php";
  static const String resetpassword="$server/Delivery/ForgetPassword/ResetPassword.php";

  //////////////orders/////////////////////////
  static const String pendingorders="$server/Delivery/orders/pending.php";
  static const String acceptedorders="$server/Delivery/orders/accepted.php";
  static const String approavorders="$server/Delivery/orders/approav.php";
  static const String archiveorders="$server/Delivery/orders/archive.php";
  static const String detailsorders="$server/Delivery/orders/details.php";
  static const String doneorders="$server/Delivery/orders/orderDone.php";
  ///////////////////////////////////////////////////////////////////////////////////////


  ///////////////Notification////////////////////
  static const String notifications="$server/Notification.php";


  

  
}