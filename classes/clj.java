import android.content.Context;
import android.net.Uri;
import android.util.Log;

public class clj extends clp {
  private final Context a;
  
  private final String b;
  
  private final String c;
  
  private final cmt d;
  
  private final String e;
  
  private final String f;
  
  private final boolean g;
  
  public clj(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    cmt cmt1;
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.g = paramBoolean;
    if (this instanceof clm) {
      cmt1 = cmt.b;
    } else {
      cmt1 = cmt.c;
    } 
    this.d = cmt1;
  }
  
  public clj(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    this(paramContext, paramString1, paramString2, paramString3, null, paramBoolean);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    (new clj(paramContext, paramString1, paramString2, paramString3, paramString4, paramBoolean)).a();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    (new clj(paramContext, paramString1, paramString2, paramString3, paramBoolean)).a();
  }
  
  public static boolean a(Context paramContext, Uri paramUri) {
    if (paramUri == null) {
      Log.e("GoogleConversionReporter", "Failed to register referrer from a null click url");
      return false;
    } 
    String str2 = String.valueOf(paramUri);
    Log.i("GoogleConversionReporter", (new StringBuilder(String.valueOf(str2).length() + 13)).append("Registering: ").append(str2).toString());
    cmr cmr = cmn.a(paramUri);
    if (cmr == null) {
      str1 = String.valueOf(paramUri);
      Log.w("GoogleConversionReporter", (new StringBuilder(String.valueOf(str1).length() + 31)).append("Failed to parse referrer from: ").append(str1).toString());
      return false;
    } 
    boolean bool = cmn.a((Context)str1, cmr);
    if (bool) {
      str1 = String.valueOf(paramUri);
      Log.i("GoogleConversionReporter", (new StringBuilder(String.valueOf(str1).length() + 25)).append("Successfully registered: ").append(str1).toString());
      return bool;
    } 
    String str1 = String.valueOf(paramUri);
    Log.w("GoogleConversionReporter", (new StringBuilder(String.valueOf(str1).length() + 20)).append("Failed to register: ").append(str1).toString());
    return bool;
  }
  
  public void a() {
    boolean bool = true;
    cms cms = (new cms()).a(this.b).a(this.d).b(this.c).c(this.e);
    if (this.f != null)
      cms.d(this.f); 
    if (this.d == cmt.c) {
      cmf cmf = cmf.a(this.a);
      cmf.c(this.b);
      cms.a(cmf.d(this.b));
    } 
    if (!cmn.a(this.a, cms, this.g))
      return; 
    try {
      if (this.d == cmt.c) {
        cms.a(cmn.a(this.a, this.b));
      } else {
        bool = false;
      } 
      a(this.a, cms, true, this.g, bool);
      return;
    } catch (Exception exception) {
      Log.e("GoogleConversionReporter", "Error sending ping", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */