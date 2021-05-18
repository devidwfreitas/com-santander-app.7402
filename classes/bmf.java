import android.content.SharedPreferences;
import android.preference.PreferenceManager;

class bmf {
  private static final String a = "_fbSourceApplicationHasBeenSet";
  
  private static final String b = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage";
  
  private static final String c = "com.facebook.appevents.SourceApplicationInfo.openedByApplink";
  
  private String d;
  
  private boolean e;
  
  private bmf(String paramString, boolean paramBoolean) {
    this.d = paramString;
    this.e = paramBoolean;
  }
  
  public static bmf a() {
    SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(bhv.h());
    return !sharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage") ? null : new bmf(sharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), sharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
  }
  
  public static void b() {
    SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(bhv.h()).edit();
    editor.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
    editor.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
    editor.apply();
  }
  
  public String c() {
    return this.d;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public void e() {
    SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(bhv.h()).edit();
    editor.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.d);
    editor.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.e);
    editor.apply();
  }
  
  public String toString() {
    String str1 = "Unclassified";
    if (this.e)
      str1 = "Applink"; 
    String str2 = str1;
    if (this.d != null)
      str2 = str1 + "(" + this.d + ")"; 
    return str2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */