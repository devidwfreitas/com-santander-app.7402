import android.net.Uri;
import android.text.TextUtils;

public class hbp {
  private static final String a = "tela";
  
  private static final String b = "codbar";
  
  private final Uri c;
  
  hbp(Uri paramUri) {
    this.c = paramUri;
  }
  
  hbp(@hbs String paramString) {
    this.c = Uri.parse("?tela=" + paramString);
  }
  
  private String a(String paramString) {
    String str = this.c.getQueryParameter(paramString);
    paramString = str;
    if (TextUtils.isEmpty(str))
      paramString = ""; 
    return paramString;
  }
  
  @hbs
  public String a() {
    return a("tela");
  }
  
  public String b() {
    return a("codbar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */