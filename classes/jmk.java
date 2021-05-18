import android.content.Context;
import android.os.CountDownTimer;
import android.support.annotation.NonNull;
import java.util.ArrayList;

public class jmk implements jmj {
  private CountDownTimer a;
  
  private jlr b;
  
  private jly c;
  
  private ArrayList<jlj> d;
  
  private jlj e;
  
  private jlq f;
  
  public jmk(Context paramContext, jly paramjly) {
    this.c = paramjly;
    this.b = (jlr)new jlt(paramContext, this);
  }
  
  private void d() {
    this.c.a(new ArrayList());
  }
  
  @Deprecated
  private void d(String paramString) {
    this.b.a(paramString);
  }
  
  private void e(String paramString) {
    this.b.b(paramString);
  }
  
  public void a() {
    if (this.a == null)
      this.a = (CountDownTimer)new jml(this, 500L, 500L); 
    c();
  }
  
  public void a(@NonNull String paramString) {
    if (!paramString.isEmpty()) {
      if (paramString.length() >= 4) {
        e(paramString);
        return;
      } 
      d();
      return;
    } 
    d();
  }
  
  public void a(jli paramjli) {
    if (paramjli != null) {
      double d1 = paramjli.a().a().a().a().doubleValue();
      double d2 = paramjli.a().a().a().b().doubleValue();
      String str = paramjli.a().b();
      this.c.a(d1, d2, str, null);
    } 
  }
  
  public void a(jlo paramjlo) {
    this.d = new ArrayList<jlj>();
    if (paramjlo != null)
      for (jln jln : paramjlo.a()) {
        jlj jlj1 = new jlj();
        jlj1.a(jlk.endereco);
        jlj1.c(jln.c());
        jlj1.a(jln.e().a());
        jlj1.b(jln.e().b());
        this.d.add(jlj1);
      }  
    this.c.a(this.d);
  }
  
  public void a(jlq paramjlq) {
    this.d = new ArrayList<jlj>();
    if (paramjlq != null) {
      this.f = paramjlq;
      this.e = new jlj();
      this.e.a(jlk.agencia);
      this.e.a(paramjlq.a().intValue());
      this.e.a(paramjlq.e() + ", " + paramjlq.f());
      this.e.b(paramjlq.i() + ", " + paramjlq.j() + " - " + paramjlq.k());
      this.d.add(this.e);
    } 
    this.c.a(this.d);
  }
  
  public jlq b() {
    return this.f;
  }
  
  public void b(String paramString) {
    this.b.c(paramString);
  }
  
  public void b(jlq paramjlq) {
    double d1 = Double.valueOf(paramjlq.l().a()).doubleValue();
    double d2 = Double.valueOf(paramjlq.l().b()).doubleValue();
    String str = String.valueOf(paramjlq.a());
    this.c.a(d1, d2, null, str);
  }
  
  public void c() {
    if (this.a != null) {
      this.a.cancel();
      this.a.start();
    } 
  }
  
  public void c(String paramString) {
    d();
    this.c.a(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jmk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */