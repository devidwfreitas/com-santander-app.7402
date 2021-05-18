import android.content.Context;

public class clr extends clp {
  private final Context a;
  
  private final boolean b;
  
  private final String c;
  
  private final cmt d;
  
  private final String e;
  
  public clr(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    this.a = paramContext;
    this.c = paramString1;
    this.e = paramString2;
    this.b = paramBoolean;
    this.d = cmt.d;
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    (new clr(paramContext, paramString1, paramString2, paramBoolean)).a();
  }
  
  public void a() {
    cms cms = (new cms()).e(this.c).a(this.d).c(this.e);
    if (!cmn.a(this.a, cms, this.b))
      return; 
    a(this.a, cms, true, this.b, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */