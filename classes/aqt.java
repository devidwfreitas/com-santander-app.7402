import android.content.Context;
import android.util.Log;
import android.webkit.URLUtil;
import java.io.InputStream;

public class aqt {
  public static final String a = "santander.com.br";
  
  private static String b = null;
  
  private static aqw c;
  
  private static ard d = ard.a();
  
  private static final String e = "[ChatComponent]";
  
  public static void a() {
    if (d != null) {
      d.e();
      d.a((arb)null);
      d = null;
    } 
  }
  
  public static void a(aqx paramaqx) {
    Log.i("[ChatComponent]", "Chat init version: 2.1.8");
    d = ard.a();
    d.a(paramaqx.c(), paramaqx.d(), paramaqx.b());
    d.a(paramaqx.f());
    d.a(paramaqx.g());
    d.a(paramaqx.a());
    b = paramaqx.e();
    d.a(paramaqx.h());
    c = d.I();
    d.c(paramaqx.i());
    d.d(paramaqx.j());
    d.g(paramaqx.k());
    (new aqv(null)).execute((Object[])new String[0]);
  }
  
  private static InputStream b(Context paramContext, String paramString) {
    InputStream inputStream;
    if ((URLUtil.isHttpsUrl(paramString) && paramString.contains("chat.santander.com.br")) || paramString.contains("google.com.br")) {
      inputStream = paramContext.getResources().openRawResource(apn.cert_middle_prod);
      Log.d("[ChatComponent]", "loadHTTPSCA ==> PROD");
      return inputStream;
    } 
    if (URLUtil.isHttpsUrl(paramString) && paramString.contains("esdblue.paas.santanderbr.corp")) {
      inputStream = inputStream.getResources().openRawResource(apn.cert_chat_oculto);
      Log.d("[ChatComponent]", "loadHTTPSCA ==> OCULTO");
      return inputStream;
    } 
    if (URLUtil.isHttpsUrl(paramString) && paramString.contains("chathomolog.santander.com.br")) {
      inputStream = inputStream.getResources().openRawResource(apn.cert_chat_hi);
      Log.d("[ChatComponent]", "loadHTTPSCA ==> HI");
      return inputStream;
    } 
    if (URLUtil.isHttpsUrl(paramString) && paramString.contains("esd.paas.santanderbr.pre.corp")) {
      inputStream = inputStream.getResources().openRawResource(apn.cert_chat_hk);
      Log.d("[ChatComponent]", "loadHTTPSCA ==> HK");
      return inputStream;
    } 
    if (URLUtil.isHttpsUrl(paramString) && paramString.contains("esd.paas.isbanbr.dev.corp")) {
      inputStream = inputStream.getResources().openRawResource(apn.cert_chat_hg);
      Log.d("[ChatComponent]", "loadHTTPSCA ==> HG");
      return inputStream;
    } 
    Log.d("[ChatComponent]", "loadHTTPSCA ==> O Chat não está disponível nesse ambiente");
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */