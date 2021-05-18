import android.app.Activity;
import android.app.Dialog;
import android.util.Base64;
import java.io.UnsupportedEncodingException;

public class gdo implements gbp, gdn {
  private Activity a;
  
  private gck b;
  
  private gbo c;
  
  private gaw d;
  
  private String e;
  
  private String f;
  
  private Dialog g;
  
  public gdo(gck paramgck) {
    this.a = (Activity)paramgck;
    this.b = paramgck;
    this.c = new gbq(this.a, this);
    this.c.a();
  }
  
  private boolean b(String paramString, gbb paramgbb) {
    if (paramString == null || paramString.trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131757839));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131757839));
    if (paramgbb == null) {
      mzv.b(this.a.getResources().getString(2131296760), this.a.findViewById(2131757843));
      return false;
    } 
    mzv.b("", this.a.findViewById(2131757843));
    return true;
  }
  
  private void c(gaw paramgaw) {
    naf naf = new naf();
    try {
      for (gav gav : paramgaw.e()) {
        if (!gav.a())
          gav.c(naf.c(Base64.decode(gav.d().getBytes("UTF-8"), 0))); 
      } 
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      hav.c(this.a, "Erro ao decriptografar campo de telefone");
      return;
    } catch (Exception exception) {
      hav.c(this.a, "Erro ao decriptografar campo de telefone");
      return;
    } 
  }
  
  public void a() {}
  
  public void a(gaw paramgaw) {
    this.d = paramgaw;
    c(paramgaw);
    this.b.a(paramgaw.e());
    this.e = paramgaw.g();
    this.f = paramgaw.h();
    this.b.a(paramgaw.d(), this.e, this.f);
  }
  
  public void a(gax paramgax) {}
  
  public void a(String paramString) {
    this.g = mxn.a(this.a, paramString, this.a.getResources().getString(2131296719), new gdp(this));
  }
  
  public void a(String paramString, gbb paramgbb) {
    if (b(paramString, paramgbb)) {
      gaq gaq = new gaq();
      gaq.s(this.d.g());
      gaq.t(this.d.h());
      gaq.z(paramString);
      gaq.d(paramgbb.d());
      gaq.m(paramgbb.c());
      gaq.e(paramgbb.b());
      this.b.a(gaq);
    } 
  }
  
  public void b() {}
  
  public void b(gaw paramgaw) {}
  
  public void b(gax paramgax) {}
  
  public void c() {
    this.b.a(this.d.f());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */