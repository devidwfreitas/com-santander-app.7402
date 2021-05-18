import android.app.Activity;
import java.util.ArrayList;

public class mpr implements mlv, mpq {
  private mno a;
  
  private Activity b;
  
  private mlu c;
  
  public mpr(mno parammno) {
    this.a = parammno;
    this.b = (Activity)parammno;
    this.c = new mlw(this.b, this);
  }
  
  private boolean a(mkw parammkw) {
    if (parammkw.c().equals("")) {
      this.a.a(this.b.getResources().getString(2131299098), 2131757694);
      return false;
    } 
    this.a.a("", 2131757694);
    if (parammkw.d().equals("")) {
      this.a.a(this.b.getResources().getString(2131299097), 2131757697);
      return false;
    } 
    this.a.a("", 2131757703);
    if (parammkw.e().equals("")) {
      this.a.a(this.b.getResources().getString(2131299099), 2131757702);
      return false;
    } 
    this.a.a("", 2131757703);
    if (parammkw.j().equals("")) {
      this.a.a(this.b.getResources().getString(2131299102), 2131757700);
      return false;
    } 
    this.a.a("", 2131757703);
    if (!parammkw.c().equals("033") && !parammkw.c().equals("0033")) {
      if (parammkw.h().equals("")) {
        this.a.a(this.b.getResources().getString(2131299103), 2131757706);
        return false;
      } 
      this.a.a("", 2131757706);
      if (parammkw.f().equals("")) {
        this.a.a(this.b.getResources().getString(2131299100), 2131757708);
        return false;
      } 
      if (!nai.e(parammkw.f())) {
        this.a.a(this.b.getResources().getString(2131299101), 2131757708);
        return false;
      } 
      this.a.a("", 2131757708);
    } 
    return true;
  }
  
  public void a() {}
  
  public void a(String paramString) {
    this.a.a(paramString);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, mkw parammkw, int paramInt) {
    this.c.a(paramString1, paramString2, paramString3, parammkw, paramInt);
  }
  
  public void a(String paramString1, String paramString2, mkw parammkw, int paramInt) {
    this.c.a(paramString1, paramString2, parammkw, paramInt);
  }
  
  public void a(mkw parammkw, int paramInt) {
    if (a(parammkw)) {
      if (parammkw.c().contains("033")) {
        a(parammkw.d(), parammkw.e() + parammkw.j(), parammkw, paramInt);
      } else {
        a(parammkw.c(), parammkw.a(), parammkw.d(), parammkw, paramInt);
      } 
      parammkw.f(parammkw.f().replace(".", "").replace("-", "").replace("/", ""));
    } 
  }
  
  public void a(mli parammli) {
    this.a.a(parammli.a());
  }
  
  public void a(mls parammls) {
    this.a.b(parammls.b());
  }
  
  public void b() {}
  
  public void b(String paramString) {
    this.a.a(paramString);
  }
  
  public void b(mli parammli) {}
  
  public void b(mls parammls) {
    this.a.b(parammls.b());
  }
  
  public void c() {
    this.c.a();
  }
  
  public void c(mli parammli) {
    for (mkq mkq : parammli.b()) {
      mkq.a(mkq.d());
      mkq.b(mkq.e());
    } 
    this.a.a(new ArrayList<mkq>(parammli.b()));
  }
  
  public void d() {
    this.c.b();
  }
  
  public void d(mli parammli) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */