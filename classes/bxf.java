import android.os.Bundle;

class bxf extends byu {
  bxf(bww parambww, bhl parambhl, Bundle paramBundle) {
    super(parambhl);
  }
  
  public void a(bmr parambmr) {
    a(parambmr, new bhr());
  }
  
  public void a(bmr parambmr, Bundle paramBundle) {
    String str1;
    Bundle bundle;
    if (paramBundle == null || !paramBundle.containsKey("object_is_liked"))
      return; 
    boolean bool = paramBundle.getBoolean("object_is_liked");
    String str2 = bww.b(this.b);
    String str3 = bww.c(this.b);
    if (paramBundle.containsKey("like_count_string")) {
      str3 = paramBundle.getString("like_count_string");
      str2 = str3;
    } 
    String str4 = bww.d(this.b);
    String str5 = bww.e(this.b);
    if (paramBundle.containsKey("social_sentence")) {
      str5 = paramBundle.getString("social_sentence");
      str4 = str5;
    } 
    if (paramBundle.containsKey("object_is_liked")) {
      str1 = paramBundle.getString("unlike_token");
    } else {
      str1 = bww.f(this.b);
    } 
    if (this.a == null) {
      bundle = new Bundle();
    } else {
      bundle = this.a;
    } 
    bundle.putString("call_id", parambmr.c().toString());
    bww.g(this.b).a("fb_like_control_dialog_did_succeed", (Double)null, bundle);
    bww.a(this.b, bool, str2, str3, str4, str5, str1);
  }
  
  public void a(bmr parambmr, bhp parambhp) {
    Bundle bundle;
    bpu.a(bjb.REQUESTS, bww.f(), "Like Dialog failed with error : %s", new Object[] { parambhp });
    if (this.a == null) {
      bundle = new Bundle();
    } else {
      bundle = this.a;
    } 
    bundle.putString("call_id", parambmr.c().toString());
    bww.a(this.b, "present_dialog", bundle);
    bww.b(this.b, "com.facebook.sdk.LikeActionController.DID_ERROR", bqa.a(parambhp));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */