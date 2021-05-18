import android.content.Context;

public class wc extends abw {
  private Context a;
  
  public wc(Context paramContext) {
    this.a = paramContext;
  }
  
  public void a(String paramString1, String paramString2, String paramString3, vz paramvz) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(abq.RECOMENDACAO.getEndpoint()).append("?").append("gw-app-key=").append(abp.b().a().a().c()).append("&shortTermType=").append(paramString1).append("&applicationValue=").append(paramString3);
    if (!paramString2.isEmpty())
      stringBuilder.append("&shortTermValue=").append(paramString2); 
    try {
      abp.b().a().a(a(stringBuilder.toString(), null), new wd(this, paramvz));
      return;
    } catch (Exception exception) {
      paramvz.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */