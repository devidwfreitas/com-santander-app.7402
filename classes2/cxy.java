import android.content.Context;

public final class cxy implements cyc {
  public cye a(Context paramContext, String paramString, cyd paramcyd) {
    cye cye = new cye();
    cye.a = paramcyd.a(paramContext, paramString);
    if (cye.a != 0) {
      cye.b = paramcyd.a(paramContext, paramString, false);
    } else {
      cye.b = paramcyd.a(paramContext, paramString, true);
    } 
    if (cye.a == 0 && cye.b == 0) {
      cye.c = 0;
      return cye;
    } 
    if (cye.b >= cye.a) {
      cye.c = 1;
      return cye;
    } 
    cye.c = -1;
    return cye;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */