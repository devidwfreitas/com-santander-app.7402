import android.content.Context;

public class nf extends abw {
  public void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, nh paramnh) {
    paramString1 = a(abq.CDB_PROGRESSIVO.getEndpoint(), new String[] { paramString1, paramString2, paramString3, paramString4 });
    try {
      abp.b().a().a(a(paramString1, null), new ng(this, paramnh, paramContext));
      return;
    } catch (Exception exception) {
      paramnh.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */