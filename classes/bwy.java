import android.os.Bundle;

class bwy implements bql {
  bwy(bww parambww) {}
  
  public void a(Bundle paramBundle) {
    String str1;
    String str2;
    String str3;
    String str4;
    String str5;
    if (paramBundle == null || !paramBundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED"))
      return; 
    boolean bool = paramBundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
    if (paramBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE")) {
      str2 = paramBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
    } else {
      str2 = bww.b(this.a);
    } 
    if (paramBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE")) {
      str3 = paramBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
    } else {
      str3 = bww.c(this.a);
    } 
    if (paramBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE")) {
      str4 = paramBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
    } else {
      str4 = bww.d(this.a);
    } 
    if (paramBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE")) {
      str5 = paramBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
    } else {
      str5 = bww.e(this.a);
    } 
    if (paramBundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN")) {
      str1 = paramBundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");
    } else {
      str1 = bww.f(this.a);
    } 
    bww.a(this.a, bool, str2, str3, str4, str5, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */