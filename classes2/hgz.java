import java.util.ArrayList;
import java.util.List;

public class hgz implements hgy {
  private hgs a;
  
  private hgc b;
  
  private hfy c;
  
  private hhq d;
  
  private boolean e;
  
  public hgz(hgs paramhgs) {
    this.a = paramhgs;
    this.b = hgh.g();
    this.d = hhq.h();
  }
  
  private void e() {
    if (this.c.e() == 2) {
      this.a.d();
      return;
    } 
    this.a.c();
  }
  
  private void f() {
    if (this.c.e() == 1)
      this.a.a(this.c.N()); 
  }
  
  private void g() {
    ArrayList<hfv> arrayList = new ArrayList();
    arrayList.add(new hfv(this.c));
    arrayList.add(new hfw(this.c));
    arrayList.add(new hfu(this.c));
    this.a.a((List)arrayList);
  }
  
  public void a() {
    this.c = this.b.b();
    if (this.c == null)
      return; 
    this.a.a(this.c);
    e();
    f();
    g();
    this.d.b();
    this.a.a();
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void b() {}
  
  public void c() {
    this.a.e();
    this.b.a(this.c, new hha(this));
    this.d.a();
  }
  
  public void d() {
    if (!this.e) {
      this.a.h();
      return;
    } 
    this.a.g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */