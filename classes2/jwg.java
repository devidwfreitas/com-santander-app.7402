import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;

public class jwg implements jub, jwf {
  private Activity a;
  
  private jua b;
  
  private jvl c;
  
  private mxf d;
  
  private jsr e;
  
  private boolean f;
  
  private gpe g;
  
  public jwg(jvl paramjvl, Activity paramActivity) {
    this.a = paramActivity;
    this.c = paramjvl;
    this.b = new juc(this.a, this);
    this.d = new mxf();
    this.e = new jsr();
  }
  
  public void a() {
    if (this.g != null)
      this.g.a(); 
  }
  
  public void a(View paramView) {
    this.g = new jwh(this, paramView, new gpi());
    this.g.a();
  }
  
  public void a(String paramString) {
    if (paramString.isEmpty() && !this.f) {
      this.c.a(this.a.getApplicationContext().getString(2131297173));
    } else if (!this.f) {
      String str = paramString.replace(" ", "").replace(".", "");
      if (str.length() < 36) {
        this.c.a(this.a.getApplicationContext().getString(2131297170));
        paramString = str;
      } else {
        paramString = str;
        if (str.length() == 36) {
          paramString = str;
          if (str.substring(str.length() - 3, str.length()).equals("000"))
            paramString = str + "00000000000"; 
        } 
      } 
      this.b.a(paramString);
    } 
    this.f = false;
  }
  
  public void a(jsr paramjsr) {
    this.c.a(paramjsr);
  }
  
  public void b() {
    this.c.a();
  }
  
  public void b(String paramString) {
    try {
      if (paramString.length() > 0) {
        paramString = paramString.replace(" ", "").replace(".", "");
        switch (paramString.charAt(0)) {
          case '8':
            paramString = this.d.a(paramString);
            this.c.a(paramString, 51);
            return;
          case '9':
            this.c.a(this.a.getApplicationContext().getString(2131297171));
            return;
        } 
        paramString = this.d.b(paramString);
        this.c.a(paramString, 54);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      this.c.a(exception.getCause().getMessage());
      return;
    } 
  }
  
  public void b(jsr paramjsr) {
    if (paramjsr == null) {
      this.c.a(this.a.getString(2131297343));
      return;
    } 
    if (paramjsr.getMensagemErro() != null) {
      this.c.a(paramjsr.getMensagemErro());
      return;
    } 
    this.c.a(this.a.getString(2131297343));
  }
  
  public void c() {
    String str2 = null;
    String str1 = str2;
    if (this.a.getIntent().getExtras() != null)
      if (this.a.getIntent().getExtras().getString("codigoBarras") != null) {
        str1 = this.a.getIntent().getExtras().getString("codigoBarras");
      } else if (this.a.getIntent().getStringExtra("cod_barras_acordo") != null) {
        str1 = this.a.getIntent().getExtras().getString("cod_barras_acordo");
      } else {
        str1 = str2;
        if (this.a.getIntent().getStringExtra("codigoBarrasDDA") != null)
          str1 = this.a.getIntent().getStringExtra("codigoBarrasDDA"); 
      }  
    if (TextUtils.isEmpty(str1)) {
      this.c.b();
      return;
    } 
    this.c.b(str1);
  }
  
  public void c(String paramString) {
    try {
      switch (paramString.charAt(0)) {
        case '8':
          this.e.n("pagTit");
          b(this.d.a(paramString, this.a));
          return;
        case '9':
          this.c.a(this.a.getApplicationContext().getString(2131297171));
          return;
      } 
      this.e.n("PagBolCob");
      b(this.d.b(paramString, this.a));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      this.f = true;
      this.c.a(exception.getCause().getMessage());
      return;
    } 
  }
  
  public boolean d() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */