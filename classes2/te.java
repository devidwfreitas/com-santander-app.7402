import android.content.Context;
import org.json.JSONObject;

public class te extends abw {
  public static boolean a;
  
  private Context b;
  
  private tj c;
  
  public te(Context paramContext) {
    this.b = paramContext;
  }
  
  public void a(String paramString, tj paramtj) {
    this.c = paramtj;
    paramString = a(abq.USER_INFO.getEndpoint()) + "&segmentCode=" + paramString;
    String str = a(abq.HOLIDAYS.getEndpoint());
    try {
      abp.b().a().a(a(paramString, (JSONObject)null), new th(this, str, paramtj));
      return;
    } catch (Exception exception) {
      this.c.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void a(tj paramtj) {
    this.c = paramtj;
    String str1 = a(abq.SUB_DETALHE_INVESTIMENTO.getEndpoint()) + "&flagOnlySavingsAccount=true";
    String str2 = a(abq.PORTIFOLIO.getEndpoint());
    if (!a)
      str1 = str2; 
    try {
      abp.b().a().a(a("" + str1, b(), new JSONObject()), new tf(this, paramtj));
      return;
    } catch (Exception exception) {
      this.c.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void b(tj paramtj) {
    this.c = paramtj;
    try {
      abp.b().a().a(a(a(abq.SUB_DETALHE_INVESTIMENTO.getEndpoint()) + "&flagOnlySavingsAccount=true", b(), new JSONObject()), new tg(this, paramtj));
      return;
    } catch (Exception exception) {
      this.c.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\te.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */