import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;

public final class nhe implements nje {
  private final nhc a;
  
  private final nhp b;
  
  private final String c;
  
  private String d;
  
  public nhe(nkj paramnkj, nhp paramnhp, nhc paramnhc, String paramString) {
    if (paramnkj == null || TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException(); 
    this.a = paramnhc;
    this.b = paramnhp;
    if (paramnkj.n() == null) {
      this.c = String.format(Locale.ROOT, "https://collect.tealiumiq.com/vdata/i.gif?tealium_vid=%s&tealium_account=%s&tealium_profile=main", new Object[] { paramString, paramnkj.c() });
      return;
    } 
    if (paramnkj.n().contains("?")) {
      String str2 = paramnkj.n();
      String str1 = str2;
      if (!paramnkj.n().contains("tealium_vid"))
        str1 = str2 + "&tealium_vid=" + paramString; 
      str2 = str1;
      if (!paramnkj.n().contains("tealium_account"))
        str2 = str1 + "&tealium_account=" + paramnkj.c(); 
      str1 = str2;
      if (!paramnkj.n().contains("tealium_profile"))
        str1 = str2 + "&tealium_profile=main"; 
      this.c = str1;
      return;
    } 
    this.c = String.format(Locale.ROOT, "%s?tealium_vid=%s&tealium_account=%s&tealium_profile=main", new Object[] { paramnkj.n(), paramString, paramnkj.c() });
  }
  
  private String b(nil paramnil) {
    String str2 = this.c;
    String str1 = str2;
    if (this.d != null)
      str1 = str2 + "&tealium_trace_id=" + this.d; 
    String[] arrayOfString = paramnil.e();
    int i = 0;
    str2 = str1;
    while (i < arrayOfString.length) {
      str1 = arrayOfString[i];
      Object object = paramnil.b(str1);
      str1 = str2 + "&" + URLEncoder.encode(str1, "UTF-8") + "=";
      if (object instanceof String[]) {
        object = object;
        int k = object.length - 1;
        int j = 0;
        while (true) {
          str2 = str1;
          if (j <= k) {
            str2 = str1 + URLEncoder.encode((String)object[j], "UTF-8");
            str1 = str2;
            if (j != k)
              str1 = str2 + ','; 
            j++;
            continue;
          } 
          break;
        } 
      } else {
        str2 = str1 + URLEncoder.encode(object.toString(), "UTF-8");
      } 
      i++;
    } 
    return str2;
  }
  
  public nik a() {
    return new nhf(this);
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public void a(nil paramnil) {
    try {
      String str = b(paramnil);
      if (this.a.a())
        this.a.a(nkf.vdata_dispatcher_sending, new Object[] { str }); 
      Runnable runnable = nii.b(str).a(a()).a();
      this.b.c(runnable);
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new RuntimeException(unsupportedEncodingException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */