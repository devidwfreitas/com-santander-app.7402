import android.content.Context;

public final class cxu implements cyc {
  public cye a(Context paramContext, String paramString, cyd paramcyd) {
    cye cye = new cye();
    cye.b = paramcyd.a(paramContext, paramString, true);
    if (cye.b != 0) {
      cye.c = 1;
      return cye;
    } 
    cye.a = paramcyd.a(paramContext, paramString);
    if (cye.a != 0) {
      cye.c = -1;
      return cye;
    } 
    return cye;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */