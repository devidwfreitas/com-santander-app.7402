import android.text.TextUtils;
import java.util.Date;

public class mrl implements mrk {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  private String k;
  
  private String l;
  
  private String m;
  
  private boolean n;
  
  private boolean o;
  
  private String p;
  
  public mrl(mlq parammlq, mlp parammlp, mrp parammrp) {
    this.a = parammlq.g();
    this.b = parammlq.b();
    this.c = parammlp.b();
    this.d = parammlq.f();
    this.e = parammlq.a();
    this.f = parammlq.l();
    this.g = parammrp.c();
    this.h = parammlq.q();
    this.i = parammlq.r();
    this.j = parammlq.t();
    this.m = parammlq.h();
    this.k = parammlp.getDataHoraTransacao();
    this.l = parammlp.a();
    this.p = parammlp.getMsgErro();
    this.n = parammlq.c();
    this.o = parammlq.s();
  }
  
  public String a() {
    try {
      return naq.c(this.b, this.a);
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public String b() {
    return !TextUtils.isEmpty(this.c) ? this.c : "";
  }
  
  public String c() {
    try {
      return n() ? naq.c(this.e, this.d) : String.format("%s / %s", new Object[] { this.e, mwv.a(this.d) });
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public String d() {
    return !TextUtils.isEmpty(this.f) ? this.f : "";
  }
  
  public String e() {
    return !TextUtils.isEmpty(this.g) ? this.g : "";
  }
  
  public String f() {
    return !TextUtils.isEmpty(this.h) ? (this.h.equalsIgnoreCase("cc") ? "Conta Corrente" : "Transferência entre contas") : "";
  }
  
  public String g() {
    return !TextUtils.isEmpty(this.i) ? this.i : "";
  }
  
  public String h() {
    try {
      return String.format("R$%s", new Object[] { this.j });
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String i() {
    return !TextUtils.isEmpty(this.k) ? this.k : gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss");
  }
  
  public String j() {
    return !TextUtils.isEmpty(this.l) ? this.l : "";
  }
  
  public String k() {
    try {
      return nai.c(this.m);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public boolean l() {
    return this.n;
  }
  
  public boolean m() {
    return this.o;
  }
  
  public boolean n() {
    return g().equalsIgnoreCase("tef");
  }
  
  public String o() {
    return this.p;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mrl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */