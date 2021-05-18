import java.io.Serializable;

public class bfl implements Serializable {
  private int a;
  
  private int b;
  
  private bfv c;
  
  private bfw d;
  
  private transient bgl e;
  
  public bfl(bgl parambgl) {
    bfv bfv1 = new bfv();
    int i = parambgl.a(bfv1);
    if (i != 0) {
      this.a = i;
      return;
    } 
    this.c = bfv1;
    this.a = i;
    this.e = parambgl;
  }
  
  public int a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(bfv parambfv) {
    this.c = parambfv;
    this.d = new bfw();
    this.e.a(this.c, this.d);
  }
  
  public bfv b() {
    return this.c;
  }
  
  public bfw c() {
    if (this.d == null)
      this.d = new bfw(); 
    if (this.e != null)
      this.e.a(this.c, this.d); 
    return this.d;
  }
  
  public int d() {
    return this.b;
  }
  
  public int e() {
    return c().a();
  }
  
  public int f() {
    return c().b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */