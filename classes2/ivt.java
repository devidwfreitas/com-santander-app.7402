import android.app.Activity;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class ivt implements ivs {
  private jaj a;
  
  private Activity b;
  
  private mip c;
  
  private List<String> d = new ArrayList<String>();
  
  private String e;
  
  public ivt(jaj paramjaj, Activity paramActivity) {
    this.a = paramjaj;
    this.b = paramActivity;
    this.c = (mip)miq.C();
  }
  
  private String b(String paramString) {
    try {
      return (new naf()).c(Base64.decode(paramString.trim().getBytes("UTF-8"), 0));
    } catch (Exception exception) {
      Log.e("DECRYPT_IDENT_CSO", exception.getMessage());
      return paramString.trim();
    } 
  }
  
  private void c() {
    (new nec(new ivw(this), this.b)).b();
    String str1 = mzr.k();
    String str2 = mzr.l();
    String str3 = mzr.j();
    if (str1 != null && str1.length() > 0 && naq.g(str1)) {
      if (str1.length() > 1) {
        this.a.a(str1);
      } else {
        this.a.a("0" + str1);
      } 
    } else {
      this.a.a("");
      mxn.a(this.b, "Alerta", "Erro ao obter o código do cartão de segurança. Por favor tente novamente em instantes.", true);
    } 
    if (str2 != null && str2.length() > 0) {
      this.a.b(b(str2));
    } else {
      this.a.b("");
    } 
    if (str3 != null && str3.length() == 10) {
      String[] arrayOfString = str3.split("");
      if (arrayOfString.length == 11) {
        this.a.a(arrayOfString);
        return;
      } 
      this.a.c();
      return;
    } 
    this.a.c();
  }
  
  public void a() {
    (new nec(new ivu(this), this.b)).a();
  }
  
  public void a(String paramString) {
    String[] arrayOfString = paramString.split("ou");
    String str = mzr.j();
    if (str != null && str.length() == 10) {
      String[] arrayOfString1 = str.split("");
      if (arrayOfString1.length == 11) {
        if (arrayOfString[0].trim().equals(arrayOfString1[1].trim()))
          this.d.add("1"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[3].trim()))
          this.d.add("2"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[5].trim()))
          this.d.add("3"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[7].trim()))
          this.d.add("4"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[9].trim()))
          this.d.add("5"); 
      } 
    } else {
      this.d.add(arrayOfString[0].trim());
    } 
    if (this.d.size() == 4)
      this.a.e(); 
  }
  
  public void b() {
    this.e = "";
    for (int i = 0; i < this.d.size(); i++)
      this.e += (String)this.d.get(i); 
    (new nec(new ivx(this), this.b, true)).a(this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ivt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */